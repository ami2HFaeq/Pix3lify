rm /data/resource-cache/overlays.list

ui_print " "
ui_print "   Disabling Google's Call Screening..."
# Disabling Google's Call Screening
DIALER_PREF_FILE=/data/data/com.google.android.dialer/shared_prefs/dialer_phenotype_flags.xml
if [ -f $DIALER_PREF_FILE ]; then
  sed -i -e 's/name="G__speak_easy_bypass_locale_check" value="true"/name="G__speak_easy_bypass_locale_check" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="G__speak_easy_enable_listen_in_button" value="true"/name="G__speak_easy_enable_listen_in_button" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="true"/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="G__enable_speakeasy_details" value="true"/name="G__enable_speakeasy_details" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="G__speak_easy_enabled" value="false"/name="G__speak_easy_enabled" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="G__speakeasy_show_privacy_tour" value="true"/name="G__speakeasy_show_privacy_tour" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="true"/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="false"/g' $DIALER_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="true"/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="false"/g' $DIALER_PREF_FILE
  am force-stop "com.google.android.dialer"
fi
