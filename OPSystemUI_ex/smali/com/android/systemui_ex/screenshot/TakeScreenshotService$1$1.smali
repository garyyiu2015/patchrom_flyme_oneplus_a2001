.class Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;

.field final synthetic val$callback:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, "reply":Landroid/os/Message;
    # setter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z
    invoke-static {v2}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$102(Z)Z

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method