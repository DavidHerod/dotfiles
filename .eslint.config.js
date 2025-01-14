export default [
  {
    ignores: ["node_modules/**"], // Ignored files and directories
  },
  {
    files: ["**/*.js"], // Target files
    languageOptions: {
      ecmaVersion: "latest", // Use the latest ECMAScript standard
      sourceType: "module", // Set source type as module
    },
    rules: {
      "no-unused-vars": "warn", // Example rule: warn for unused variables
      "no-console": "off", // Allow console.log statements
    },
  },
];
