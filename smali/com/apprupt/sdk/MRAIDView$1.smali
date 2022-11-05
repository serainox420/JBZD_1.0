.class Lcom/apprupt/sdk/MRAIDView$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$1;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->b:Z

    .line 119
    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->c:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Lcom/apprupt/sdk/MRAIDView$1;->c:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 144
    :goto_0
    return v2

    .line 126
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 143
    :cond_1
    :goto_1
    :pswitch_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->b:Z

    goto :goto_1

    .line 134
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->b:Z

    goto :goto_1

    .line 137
    :pswitch_3
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->b:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$1;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
