import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic generateMessages(
  List<MessagesRecord> messages,
  String newMessage,
) {
  List<Map<String, String>> msgs = [];

  // Add system prompt as the first message
  msgs.add({
    "role": "system",
    "content":
        "You are a compassionate CBT therapist specializing in the TEAM CBT approach. Your responses should be short, warm, and feel like a natural human conversation. Focus on empathy, understanding the user's perspective, and asking thoughtful, open-ended questions. Avoid long explanations—keep it simple, human, and supportive."
  });

  // Add existing conversation history
  messages.forEach((element) {
    msgs.add({
      "role": element.user == "ChatGPT" ? "assistant" : "user",
      "content": element.message!
    });
  });

  // Add the new user message
  msgs.add({"role": "user", "content": newMessage});

  return jsonEncode(msgs);
}

String extractRelevantMessage(String fullMessage) {
  // Normalize the text by removing extra whitespace and hidden characters
  String normalizedMessage = fullMessage.replaceAll(RegExp(r'\s+'), ' ').trim();

  // Check for '</think>' and extract only the relevant part after it
  if (normalizedMessage.contains('</think>')) {
    return normalizedMessage.split('</think>').last.trim();
  }

  // If the tag doesn't exist, return the full normalized message
  return normalizedMessage;
}

dynamic generateVoiceMessages(
  List<VoiceMessagesRecord> messages,
  String newMessage,
) {
  List<Map<String, String>> msgs = [];

  // Add system prompt as the first message
  msgs.add({
    "role": "system",
    "content":
        "You are a compassionate CBT therapist specializing in the TEAM CBT approach. Your responses should be short, warm, and feel like a natural human conversation. Focus on empathy, understanding the user's perspective, and asking thoughtful, open-ended questions. Avoid long explanations—keep it simple, human, and supportive."
  });

  // Add existing conversation history
  messages.forEach((element) {
    msgs.add({
      "role": element.user == "ChatGPT" ? "assistant" : "user",
      "content": element.message!
    });
  });

  // Add the new user message
  msgs.add({"role": "user", "content": newMessage});

  return jsonEncode(msgs);
}
