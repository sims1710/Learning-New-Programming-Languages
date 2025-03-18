// Optional Type Members
interface OptionsType {
  name: string;
  size?: string;
}

function listFile(options: OptionsType) {
  let fileName = options.name;

  if (options.size) {
    fileName = `${fileName}: ${options.size}`;
  }

  return fileName;
}

// 2ND EXAMPLE
// Write an interface here
interface UserNameOptions{
  firstName?: string;
  lastName?: string;
  username: string;
}

function getUserName(options: UserNameOptions) {
  if (options.firstName && options.lastName) {
    return console.log(`${options.firstName} ${options.lastName}`);
  }

  return console.log(options.username);
}

getUserName({
  firstName: 'Mr.',
  lastName: 'Oshiro',
  username: 'hotelowner304'
})

getUserName({
  firstName: 'Madeline',
  username: 'mountainClimber'
})
