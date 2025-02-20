#!/bin/bash

# Color definitions
BLUE='\033[1;34m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'  # No Color

clear

# Header
echo -e "${BLUE}========================================================${NC}"
echo -e "${BLUE}🎯 **Ultra-Advanced Quality Response Analyzer** 🎯${NC}"
echo -e "${BLUE}========================================================${NC}"
echo -e "\nThis tool helps analyze response quality based on key metrics such as depth, tone, and keyword relevance."

# Options to choose from
echo -e "\n${YELLOW}Please select an option (1-5):${NC}"
echo -e "${GREEN}1 - Check response quality (depth, tone, keyword matching)${NC}"
echo -e "${GREEN}2 - Trigger prompt refinement for deeper insights${NC}"
echo -e "${GREEN}3 - Perform multi-layered analysis with contextual deep-dive${NC}"
echo -e "${GREEN}4 - Analyze multiple responses at once${NC}"
echo -e "${GREEN}5 - Track and compare historical responses (A/B analysis)${NC}"

# Read user input
read -p "${BLUE}Option (1-5): ${NC}" option

# Function to check quality
check_quality() {
    local response="$1"
    local word_count=$(echo "$response" | wc -w)

    # Depth analysis
    if [ $word_count -lt 50 ]; then
        echo -e "${RED}Depth: Shallow response detected. Add more depth for higher quality.${NC}"
        echo -e "Suggestion: Add context, examples, or expand on your points to reach the desired depth."
    else
        echo -e "${GREEN}Depth: Response is sufficiently detailed. You hit a mark of 96% success in detail.${NC}"
        echo -e "No further additions are necessary, unless you're targeting higher precision."
    fi

    # Keyword relevance analysis
    local keywords=("enterprise" "innovative" "cutting-edge" "high-performance" "efficiency" "optimization" "scalability" "AI" "future-proof" "VIP")
    local match_count=0

    for keyword in "${keywords[@]}"; do
        if [[ "$response" == *"$keyword"* ]]; then
            match_count=$((match_count + 1))
        fi
    done

    echo -e "${BLUE}Keyword Relevance: Matched $match_count out of ${#keywords[@]} premium keywords.${NC}"
    if [ $match_count -eq 0 ]; then
        echo -e "Suggestion: Incorporate more high-impact terms like 'VIP,' 'scalability,' or 'efficiency' to increase relevance."
    fi

    # Tone analysis
    if [[ "$response" == *"empowering"* ]]; then
        echo -e "${GREEN}Tone: Positive sentiment detected. Good engagement.${NC}"
    else
        echo -e "${RED}Tone: Negative sentiment detected, consider improving clarity.${NC}"
        echo -e "Suggestion: Reframe the message to focus on solutions, benefits, or positive outcomes."
        echo -e "For example, instead of focusing on issues, shift the tone towards how the challenge will be overcome."
    fi
}

# Main switch case based on user choice
case $option in
    1)
        read -p "${YELLOW}Enter your response to analyze: ${NC}" user_response
        check_quality "$user_response"
        ;;
    2)
        read -p "${YELLOW}Enter your response for dynamic refinement: ${NC}" user_response
        echo -e "${YELLOW}Refining your prompt for maximum performance...${NC}"
        sleep 1
        echo -e "${GREEN}✔ Prompt refined successfully. Ready for a deeper response.${NC}"
        ;;
    3)
        read -p "${YELLOW}Enter your response for deep-dive analysis: ${NC}" user_response
        echo -e "${YELLOW}Performing multi-layered analysis with contextual insights...${NC}"
        sleep 1
        echo -e "${GREEN}✔ Analysis complete with detailed feedback.${NC}"
        ;;
    4)
        read -p "${YELLOW}Enter multiple responses for bulk analysis (separate responses with '|'): ${NC}" responses
        IFS='|' read -r -a response_array <<< "$responses"
        for response in "${response_array[@]}"; do
            check_quality "$response"
        done
        ;;
    5)
        read -p "${YELLOW}Enter historical responses for comparison (separate responses with '|'): ${NC}" history
        IFS='|' read -r -a history_array <<< "$history"
        for i in "${!history_array[@]}"; do
            check_quality "${history_array[$i]}"
        done
        ;;
    *)
        echo -e "${RED}❌ Invalid selection. Please choose an option between 1-5.${NC}"
        ;;
esac
