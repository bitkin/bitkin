#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Bitkincoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOIND=${BITCOIND:-$BINDIR/bitkincoind}
BITCOINCLI=${BITCOINCLI:-$BINDIR/bitkincoin-cli}
BITCOINTX=${BITCOINTX:-$BINDIR/bitkincoin-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/bitkincoin-wallet}
BITCOINQT=${BITCOINQT:-$BINDIR/qt/bitkincoin-qt}

[ ! -x $BITCOIND ] && echo "$BITCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a BTKVER <<< "$($BITCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for bitkincoind if --version-string is not set,
# but has different outcomes for bitkincoin-qt and bitkincoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOIND $BITCOINCLI $BITCOINTX $WALLET_TOOL $BITCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTKVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTKVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
