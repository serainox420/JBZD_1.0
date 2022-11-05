.class Lcom/inmobi/commons/internal/ApplicationFocusManager$a;
.super Landroid/os/Handler;
.source "ApplicationFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/ApplicationFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 162
    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 165
    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
