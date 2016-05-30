.class public Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;
.super Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;
.source "OpSystemRingtonePicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

.field private mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    return-void
.end method

.method private initPreference()V
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    iget v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mType:I

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    .end local v0    # "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 100
    .local v1, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->addPreferencesFromResource(I)V

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 34
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 35
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 38
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->initPreference()V

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateSelected()V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f09011a

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "key":Ljava/lang/String;
    const-string v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->stopAnyPlayingRingtone()V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getSimId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 117
    :cond_0
    const-string v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->stopAnyPlayingRingtone()V

    .line 119
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getSimId()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 128
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 130
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 133
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->playRingtone(ILandroid/net/Uri;)V

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getSimId()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v5, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 141
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 143
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 144
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 145
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v4, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_2
.end method

.method protected updateSelected()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x7f09011a

    const/4 v4, 0x0

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 68
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 69
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 71
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    .line 90
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mType:I

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 79
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getSimId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;

    move-result-object v0

    .line 84
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    .line 87
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method