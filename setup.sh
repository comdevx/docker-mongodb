#!/bin/bash

mongo <<EOF

use $MONGO_INITDB_DATABASE

if ('$MONGO_USERNAME' != ''){

    print('create user.')

    db.createUser({
        user:  '$MONGO_USERNAME',
        pwd: '$MONGO_PASSWORD',
        roles: [{
            role: 'readWrite',
            db: '$MONGO_INITDB_DATABASE'
        }]
    })
}

if ('$MONGO_READ_USERNAME' != ''){
    
    print('create user for read.')

    db.createUser({
        user:  '$MONGO_READ_USERNAME',
        pwd: '$MONGO_READ_PASSWORD',
        roles: [{
            role: 'read',
            db: '$MONGO_INITDB_DATABASE'
        }]
    })
}

EOF