.class public Lcom/oneplus/camera/ui/PreviewCoverBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "PreviewCoverBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
