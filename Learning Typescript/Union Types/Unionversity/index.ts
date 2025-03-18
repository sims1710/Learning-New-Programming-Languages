import courses from './courses';
import studyGroups from './studyGroups';

type Course = {
  id: number,
  studyGroupId: number,
  title: string,
  keywords: string[],
  eventType: string
}

type StudyGroup = {
  id: number,
  courseId: number,
  title: string,
  keywords: string[],
  eventType: string
}

type SearchEventsOptions = {
  query: number | string,
  eventType: 'courses' | 'groups';
}

function searchEvents(options: SearchEventsOptions) {
  let events: (Course | StudyGroup)[] = studyGroups;

  if (options.eventType === 'courses') {
    events = courses;
  }
  return events.filter((event: Course | StudyGroup) => {
    if (typeof options.query === 'number') {
  return options.query === event.id;
    }
    if (typeof options.query === 'string') {
  return true;
    }
  });
}

let enrolledEvents:(Course | StudyGroup)[] = [];

function enroll(event: Course | StudyGroup) {
  return enrolledEvents = [...enrolledEvents, event];
}

const searchOptions: SearchEventsOptions = {
  query: 'art', // Provide a valid query value (string or number)
  eventType: 'courses',
};

var searchResults = searchEvents(searchOptions);
console.log(searchResults);

const classEnrolled = enroll(searchResults[0]);
console.log(enrolledEvents);
