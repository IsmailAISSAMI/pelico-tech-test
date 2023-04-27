import { render, screen } from '@testing-library/react';
import App from './App';

test('renders the online store title', () => {
  render(<App />);
  const titleElement = screen.getByText(/My Online Store/i);
  expect(titleElement).toBeInTheDocument();
});

