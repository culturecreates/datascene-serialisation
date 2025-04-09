import React from 'react';
import { JsonSchemaViewer } from '@stoplight/json-schema-viewer';

const schema = {
  type: 'object',
  properties: {
    name: {
      type: 'string',
    },
    age: {
      type: 'integer',
    },
  },
};

function App() {
  return (
    <div>
      <h1>JSON Schema Viewer</h1>
      <JsonSchemaViewer schema={schema} />
    </div>
  );
}

export default App;