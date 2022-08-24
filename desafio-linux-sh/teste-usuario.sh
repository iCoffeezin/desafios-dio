#!/bin/bash

echo "Cadastrando usuários..."

useradd carlos -m -s /bin/bash
yes '123' | passwd carlos
