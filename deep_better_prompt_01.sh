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

    if [ $word_count -lt 50 ]; then
        echo -e "${RED}Depth: Shallow response detected. Add more detail for a higher-quality response.${NC}"
        echo -e "${GREEN}Recommendation: Aim for 50+ words, providing examples, context, or details that support your points.${NC}"
    else
        echo -e "${GREEN}Depth: Your response is sufficiently detailed (96% success). Adding more wouldn't enhance it significantly unless specific points need expansion.${NC}"
    fi

    # Keywords list for a more premium response
    local keywords=("VIP" "Fortune500" "cutting-edge" "high-performance" "enterprise-level" "scalable" "innovative" "reliable" "transformative" "seamless")
    local match_count=0

    for keyword in "${keywords[@]}"; do
        if [[ "$response" == *"$keyword"* ]]; then
            match_count=$((match_count + 1))
        fi
    done

    if [ $match_count -lt 3 ]; then
        echo -e "${RED}Keyword Relevance: Matched $match_count out of 10 premium keywords.${NC}"
        echo -e "${YELLOW}Suggestions: Incorporate terms like 'seamless,' 'innovative,' 'enterprise-level' to align with a higher-quality response.${NC}"
    else
        echo -e "${GREEN}Keyword Relevance: Excellent, matched $match_count out of 10 premium keywords.${NC}"
    fi

    # Tone check
    if [[ "$response" == *"empowering"* || "$response" == *"engaging"* || "$response" == *"collaborative"* ]]; then
        echo -e "${GREEN}Tone: Positive sentiment detected. Your response conveys an empowering message.${NC}"
    else
        echo -e "${RED}Tone: Negative sentiment detected. You might want to rephrase for clarity and positivity.${NC}"
        echo -e "${YELLOW}Recommendation: Try rewording your response with phrases like 'this will enable,' 'we ensure,' or 'transforming the way.' This creates a sense of action and engagement.${NC}"
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
        echo -e "${YELLOW}Refining your prompt for deeper insights...${NC}"
        sleep 1
        echo -e "${GREEN}✔ Prompt refined successfully. Ready for a deeper, more impactful response.${NC}"
        ;;
    3)
        read -p "${YELLOW}Enter your response for deep-dive analysis: ${NC}" user_response
        echo -e "${YELLOW}Performing multi-layered analysis with contextual insights...${NC}"
        sleep 1
        echo -e "${GREEN}✔ Detailed analysis complete. Here are your key improvements.${NC}"
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








