.class public Lcom/oneplus/settings/ringtone/OpNoFilePreference;
.super Landroid/preference/Preference;
.source "OpNoFilePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpNoFilePreference;->initviews()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpNoFilePreference;->initviews()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpNoFilePreference;->initviews()V

    .line 24
    return-void
.end method

.method private initviews()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpNoFilePreference;->setLayoutResource(I)V

    .line 28
    return-void
.end method