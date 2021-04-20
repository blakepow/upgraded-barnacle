import React from 'react';

import UsersList from '../components/UsersList';

const Users = () => {
  const USERS = [
    {
      id: 'u1',
      name: 'Blake Powelson',
      image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.srXDFegqjVSAPH74CaLZzgHaE7%26pid%3DApi%26h%3D160&f=1',
      places: 3
    }
  ];

  return <UsersList items={USERS} />;
};

export default Users;
