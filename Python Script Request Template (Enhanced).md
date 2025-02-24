"Please write a Python script for [describe the task]. Follow these guidelines:

    Best Practices:
        Check Before Acting: Verify the state (e.g., if a service is running or a file exists) before performing actions like stopping, deleting, or modifying.
        Use robust error handling (try-except blocks, logging exceptions, and cleanup with context managers).
        Validate all input and parameters rigorously using libraries like `pydantic` or custom validation logic.
        Use functions for reusable, modular code.
        Add concise comments and docstrings to explain key steps and functions.

    Organization:
        Split the script into logical sections (e.g., Imports, Initialization, Functions, Main Logic, Cleanup).
        Separate sections with clear visual dividers (e.g., # ---- Section Title ----).
        Use meaningful, self-documenting variable and function names following PEP 8 conventions.

    Efficiency:
        Avoid unnecessary operations (e.g., don’t stop a service if it’s not running).
        Use dry-run or simulation options for destructive actions (e.g., print actions instead of executing them).
        Use progress indicators (e.g., `tqdm`) for long-running tasks to provide real-time progress updates.

    Logging:
        Include verbose logging for detailed output during execution using the `logging` module.
        At the end of the script, generate an actionable log that provides:
            Critical Metrics: Only include metrics that matter (e.g., "5 files deleted").
            Actionable Insights: Short, clear statements about what happened and what to do next (e.g., "Service X failed to stop. Restart the server.").
        Add time stamps to all log entries for tracking and forensics.
        Optionally, write logs to a file for later analysis.

    Documentation:
        Add a header with a brief description, author, version, and usage instructions.
        Include examples of how to run the script with common parameters using `argparse`.
        Use type hints for function signatures to improve clarity and maintainability.

    Enterprise Readiness:
        Return a status code (e.g., 0 for success, 1 for failure) to indicate the overall result using `sys.exit()`.
        Support configurable log levels (e.g., -v for verbose, -q for quiet) to control the amount of output.
        Ensure the script is idempotent where possible (e.g., running it multiple times produces the same result).

    Additional Enhancements:
        1. **Auto-Retry on Failure**: Use `tenacity` to automatically retry failed operations.
        2. **Caching**: Use `functools.lru_cache` to cache results of expensive operations.
        3. **Parallel Execution**: Use `concurrent.futures.ThreadPoolExecutor` for faster processing.
        4. **Memory Tracking**: Use `tracemalloc` to detect and fix memory leaks.
        5. **Interactive Debugging**: Use `pdb.set_trace()` for step-by-step debugging.
        6. **Fail-Safe Auto-Rollback**: Use `contextlib.ExitStack` for cleanup in case of errors.
        7. **Auto-Generate Documentation**: Use `pydoc` to generate documentation from docstrings.
        8. **Type Hints**: Use Python’s built-in type hints for clarity and early error detection.
        9. **Linting and Formatting**: Use `black`, `ruff`, and `flake8` for clean and consistent code.
        10. **Early Returns**: Use early `return` statements to avoid deep nested conditions.
        11. **List Comprehensions**: Use list comprehensions and generators for faster and more readable loops.
        12. **Structured Error Handling**: Use `try-except` with `logging.exception()` for proper error logging.
        13. **Automatic Resource Cleanup**: Use `with` statements for files and connections.
        14. **Environment Variable Support**: Use `os.getenv()` for configuration values.
        15. **Progress Bars**: Use `tqdm` for real-time feedback on long-running tasks.
        16. **Smart Configuration Handling**: Use `configparser` or `.env` files for centralized settings.
        17. **Predictive Analysis**: Add logic to predict potential issues (e.g., disk space usage trends).
        18. **Automated Remediation**: Automatically fix issues (e.g., clear temporary files if disk space is low).
        19. **Integration with Monitoring Tools**: Send logs to tools like Prometheus or Grafana.
        20. **Executive Summary**: Generate a high-level summary for decision-makers.

Here’s the structure to follow:

```python
# ---- Script Header ----
# Description: [Brief description of the script]
# Author: [Your name]
# Version: 1.0
# Usage: python script.py -p value

# ---- Imports ----
import os
import sys
import logging
import argparse
from typing import Optional, List, Dict
from pathlib import Path
from tqdm import tqdm
from functools import lru_cache
from concurrent.futures import ThreadPoolExecutor
from tenacity import retry, stop_after_attempt, wait_fixed

# ---- Initialization ----
def initialize(args):
    """Set up variables, validate input, and configure settings."""
    # Example: Validate input
    if not Path(args.param).exists():
        logging.error(f"Path {args.param} does not exist.")
        sys.exit(1)

# ---- Functions ----
@retry(stop=stop_after_attempt(3), wait=wait_fixed(2))
def fetch_data(url: str) -> Optional[Dict]:
    """Fetch data from a URL with retry logic."""
    logging.debug(f"Fetching data from {url}")
    # Simulate a network request
    return {"data": "example"}

@lru_cache(maxsize=None)
def expensive_operation(x: int) -> int:
    """Perform an expensive operation with caching."""
    logging.debug(f"Running expensive operation for {x}")
    return x ** 2

def process_item(item: str) -> str:
    """Process an item with parallel execution."""
    logging.debug(f"Processing item: {item}")
    return item.upper()

# ---- Main Logic ----
def main_logic(args):
    """Implement the core functionality of the script."""
    try:
        # Example: Fetch data with retry logic
        data = fetch_data("https://example.com")
        logging.info(f"Data fetched: {data}")

        # Example: Parallel execution
        items = ["item1", "item2", "item3"]
        with ThreadPoolExecutor() as executor:
            results = list(tqdm(executor.map(process_item, items), total=len(items))
        logging.info(f"Processed items: {results}")

        # Example: Expensive operation with caching
        result = expensive_operation(10)
        logging.info(f"Expensive operation result: {result}")

    except Exception as e:
        logging.exception("An error occurred during main logic execution.")
        sys.exit(1)

# ---- Actionable Log ----
def generate_actionable_log():
    """Generate a short, actionable summary with time stamps."""
    logging.info("===== Actionable Log =====")
    logging.info("- Task: Process items")
    logging.info("- Status: Completed successfully")
    logging.info("- Items Processed: 3")
    logging.info("- Warnings: 0")
    logging.info("- Errors: 0")
    logging.info("==========================")

# ---- Cleanup ----
def cleanup():
    """Perform any necessary cleanup tasks."""
    logging.info("Cleaning up resources...")
    # Example: Close files, release connections, etc.

# ---- Executive Summary ----
def generate_executive_summary():
    """Generate a high-level executive summary."""
    logging.info("===== Executive Summary =====")
    logging.info("- Task: Process items")
    logging.info("- Status: Completed successfully")
    logging.info("- Items Processed: 3")
    logging.info("- Warnings: 0")
    logging.info("- Errors: 0")
    logging.info("- Estimated Cost Savings: $500")
    logging.info("============================")

# ---- Main Function ----
def main():
    # Parse arguments
    parser = argparse.ArgumentParser(description="Process some inputs.")
    parser.add_argument("-p", "--param", type=str, required=True, help="Example parameter")
    parser.add_argument("--dry-run", action="store_true", help="Enable dry-run mode")
    parser.add_argument("-v", "--verbose", action="store_true", help="Enable verbose logging")
    parser.add_argument("-q", "--quiet", action="store_true", help="Enable quiet mode")
    args = parser.parse_args()

    # Configure logging
    log_level = logging.DEBUG if args.verbose else logging.WARNING if args.quiet else logging.INFO
    logging.basicConfig(level=log_level, format="%(asctime)s - %(levelname)s - %(message)s")

    # Run script
    initialize(args)
    main_logic(args)
    generate_actionable_log()
    generate_executive_summary()
    cleanup()

if __name__ == "__main__":
    main()
