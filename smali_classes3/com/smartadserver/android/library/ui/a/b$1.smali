.class Lcom/smartadserver/android/library/ui/a/b$1;
.super Lcom/smartadserver/android/library/ui/a/a;
.source "SASSphericalVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/smartadserver/android/library/ui/a/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b$1;->b:Lcom/smartadserver/android/library/ui/a/b;

    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/smartadserver/android/library/ui/a/a;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$1;->b:Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->a()V

    .line 75
    return-void
.end method
