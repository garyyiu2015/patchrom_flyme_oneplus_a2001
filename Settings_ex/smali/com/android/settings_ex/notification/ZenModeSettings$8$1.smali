.class Lcom/android/settings_ex/notification/ZenModeSettings$8$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings$8;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$1;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$8$1;->this$1:Lcom/android/settings_ex/notification/ZenModeSettings$8;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ZenModeSettings$8;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->updateDays()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$300(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    .line 363
    return-void
.end method