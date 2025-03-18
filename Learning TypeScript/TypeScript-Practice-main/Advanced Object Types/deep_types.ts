// Deep Types

// This class: 
class OneSeries implements Robot {
  about;

  constructor(props: { general: { id: number; name: string; } }) {
    this.about = props;
  }

  getRobotId() {
    return `ID: ${this.about.general.id}`;
  }
}

// can be implemented using this interface:
interface Robot {
  about: {
    general: {
      id: number;
      name: string;
    };
  };
  getRobotId: () => string;
}


// 2ND EXAMPLE
interface Directory {
  addFile: (name: string) => void;
  // Define a config type member here
  config: {
    default: {
      encoding: string;
      permissions: string;
    }
  } 
}

class DesktopDirectory implements Directory {
  config = {
    default: {
      encoding: 'utf-8',
      permissions: 'drw-rw-rw-',
    }
  }

  addFile(name: string) {
    console.log(`Adding file: ${name}`);
  }

  showPreview(name: string) {
    console.log(`Opening preview of file: ${name}`);
  }
}

const Desktop = new DesktopDirectory();

console.log(Desktop.config);
