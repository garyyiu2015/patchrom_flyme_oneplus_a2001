.class Lcom/oneplus/settings/accessibility/AccessibilitySettings$4;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$4;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$400(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    .line 180
    return-void
.end method