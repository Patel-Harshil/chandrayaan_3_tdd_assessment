import 'package:chandrayaan_3_tdd_assessment/enum.dart';

class SpaceCraft {
  FaceDirection face;
  FaceDirection head;
  int xPosition;
  int yPosition;
  int zPosition;

  SpaceCraft.load(
      {required this.face,
      required this.head,
      required this.xPosition,
      required this.yPosition,
      required this.zPosition});

  void moveLeft() {
    // Face will be rotated 90 degree left
    // Head will be still
    // Movement will be still
    switch (face) {
      case FaceDirection.north:
        {
          switch (head) {
            case FaceDirection.north: //not possible
              break;
            case FaceDirection.south: //not possible
              break;
            case FaceDirection.east:
              face = FaceDirection.up;
              break;
            case FaceDirection.west:
              face = FaceDirection.down;
              break;
            case FaceDirection.up:
              face = FaceDirection.west;
              break;
            case FaceDirection.down:
              face = FaceDirection.east;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.south:
        {
          switch (head) {
            case FaceDirection.north: //not possible
              break;
            case FaceDirection.south: //not possible
              break;
            case FaceDirection.east:
              face = FaceDirection.up;
              break;
            case FaceDirection.west:
              face = FaceDirection.down;
              break;
            case FaceDirection.up:
              face = FaceDirection.east;
              break;
            case FaceDirection.down:
              face = FaceDirection.west;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.east:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.down;
              break;
            case FaceDirection.south:
              face = FaceDirection.up;
              break;
            case FaceDirection.east: //not possible
              break;
            case FaceDirection.west: //not possible
              break;
            case FaceDirection.up:
              face = FaceDirection.north;
              break;
            case FaceDirection.down:
              face = FaceDirection.south;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.west:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.up;
              break;
            case FaceDirection.south:
              face = FaceDirection.down;
              break;
            case FaceDirection.east: //not possible
              break;
            case FaceDirection.west: //not possible
              break;
            case FaceDirection.up:
              face = FaceDirection.south;
              break;
            case FaceDirection.down:
              face = FaceDirection.north;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.up:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.east;
              break;
            case FaceDirection.south:
              face = FaceDirection.west;
              break;
            case FaceDirection.east:
              face = FaceDirection.south;
              break;
            case FaceDirection.west:
              face = FaceDirection.north;
              break;
            case FaceDirection.up: //not possible
              break;
            case FaceDirection.down: //not possible
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.down:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.west;
              break;
            case FaceDirection.south:
              face = FaceDirection.east;
              break;
            case FaceDirection.east:
              face = FaceDirection.north;
              break;
            case FaceDirection.west:
              face = FaceDirection.south;
              break;
            case FaceDirection.up: //not possible
              break;
            case FaceDirection.down: //not possible
              break;
            default:
              break;
          }
        }
        break;
    }
  }

  void moveRight() {
    // Face will be rotated 90 degree Right
    // Head will be still
    // Movement will be still

    switch (face) {
      case FaceDirection.north:
        {
          switch (head) {
            case FaceDirection.north: //not possible
              break;
            case FaceDirection.south: //not possible
              break;
            case FaceDirection.east:
              face = FaceDirection.down;
              break;
            case FaceDirection.west:
              face = FaceDirection.up;
              break;
            case FaceDirection.up:
              face = FaceDirection.east;
              break;
            case FaceDirection.down:
              face = FaceDirection.west;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.south:
        {
          switch (head) {
            case FaceDirection.north: //not possible
              break;
            case FaceDirection.south: //not possible
              break;
            case FaceDirection.east:
              face = FaceDirection.down;
              break;
            case FaceDirection.west:
              face = FaceDirection.up;
              break;
            case FaceDirection.up:
              face = FaceDirection.west;
              break;
            case FaceDirection.down:
              face = FaceDirection.east;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.east:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.up;
              break;
            case FaceDirection.south:
              face = FaceDirection.down;
              break;
            case FaceDirection.east: //not possible
              break;
            case FaceDirection.west: //not possible
              break;
            case FaceDirection.up:
              face = FaceDirection.south;
              break;
            case FaceDirection.down:
              face = FaceDirection.north;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.west:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.down;
              break;
            case FaceDirection.south:
              face = FaceDirection.up;
              break;
            case FaceDirection.east: //not possible
              break;
            case FaceDirection.west: //not possible
              break;
            case FaceDirection.up:
              face = FaceDirection.north;
              break;
            case FaceDirection.down:
              face = FaceDirection.south;
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.up:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.west;
              break;
            case FaceDirection.south:
              face = FaceDirection.east;
              break;
            case FaceDirection.east:
              face = FaceDirection.north;
              break;
            case FaceDirection.west:
              face = FaceDirection.south;
              break;
            case FaceDirection.up: //not possible
              break;
            case FaceDirection.down: //not possible
              break;
            default:
              break;
          }
        }
        break;
      case FaceDirection.down:
        {
          switch (head) {
            case FaceDirection.north:
              face = FaceDirection.east;
              break;
            case FaceDirection.south:
              face = FaceDirection.west;
              break;
            case FaceDirection.east:
              face = FaceDirection.south;
              break;
            case FaceDirection.west:
              face = FaceDirection.north;
              break;
            case FaceDirection.up: //not possible
              break;
            case FaceDirection.down: //not possible
              break;
            default:
              break;
          }
        }
        break;
    }
  }

  void moveUp() {
    // Face will be rotated 90 degree up
    // Head will be rotated 90 degree up
    // Movement will be still

    switch (face) {
      case FaceDirection.north:
        face = head;
        head = FaceDirection.south;
        break;
      case FaceDirection.south:
        face = head;
        head = FaceDirection.north;
        break;
      case FaceDirection.east:
        face = head;
        head = FaceDirection.west;
        break;
      case FaceDirection.west:
        face = head;
        head = FaceDirection.east;
        break;
      case FaceDirection.up:
        face = head;
        head = FaceDirection.down;
        break;
      case FaceDirection.down:
        face = head;
        head = FaceDirection.up;
        break;
    }
  }

  void moveDown() {
    // Face will be rotated 90 degree down
    // Head will be rotated 90 degree down
    // Movement will be still

    switch (head) {
      case FaceDirection.north:
        head = face;
        face = FaceDirection.south;
        break;
      case FaceDirection.south:
        head = face;
        face = FaceDirection.north;
        break;
      case FaceDirection.east:
        head = face;
        face = FaceDirection.west;
        break;
      case FaceDirection.west:
        head = face;
        face = FaceDirection.east;
        break;
      case FaceDirection.up:
        head = face;
        face = FaceDirection.down;
        break;
      case FaceDirection.down:
        head = face;
        face = FaceDirection.up;
        break;
    }
  }

  void moveForward() {
    // Face will be still
    // Head will be still
    // Movement will be 1 step forward towards face direction

    switch (face) {
      case FaceDirection.north:
        yPosition++;
        break;
      case FaceDirection.south:
        yPosition--;
        break;
      case FaceDirection.east:
        xPosition++;
        break;
      case FaceDirection.west:
        xPosition--;
        break;
      case FaceDirection.up:
        zPosition++;
        break;
      case FaceDirection.down:
        zPosition--;
        break;
    }
  }

  void moveBackward() {
    // Face will be still
    // Head will be still
    // Movement will be 1 step backward towards face direction

    switch (face) {
      case FaceDirection.north:
        yPosition--;
        break;
      case FaceDirection.south:
        yPosition++;
        break;
      case FaceDirection.east:
        xPosition--;
        break;
      case FaceDirection.west:
        xPosition++;
        break;
      case FaceDirection.up:
        zPosition--;
        break;
      case FaceDirection.down:
        zPosition++;
        break;
    }
  }
}
