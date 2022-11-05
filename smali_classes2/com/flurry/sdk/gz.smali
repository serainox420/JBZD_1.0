.class public abstract Lcom/flurry/sdk/gz;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gz$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/r;

.field private final c:Lcom/flurry/sdk/gz$a;

.field private d:Landroid/app/ProgressDialog;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J

.field private final g:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/gz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/gz;->f:J

    .line 235
    new-instance v0, Lcom/flurry/sdk/gz$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gz$1;-><init>(Lcom/flurry/sdk/gz;)V

    iput-object v0, p0, Lcom/flurry/sdk/gz;->g:Lcom/flurry/sdk/kh;

    .line 52
    iput-object p2, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    .line 53
    iput-object p3, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    .line 54
    return-void
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gz;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/flurry/sdk/gz;->f:J

    return-wide v0
.end method


# virtual methods
.method public addTimerListener()V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/gz;->f:J

    .line 227
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gz;->g:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 228
    return-void
.end method

.method public cleanupLayout()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->removeTimerListener()V

    .line 60
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    .line 183
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    const-string v2, "Dismiss progress bar."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/gz;->f:J

    .line 185
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->removeTimerListener()V

    .line 186
    return-void
.end method

.method public getAdController()Lcom/flurry/sdk/au;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    return-object v0
.end method

.method public getAdFrameIndex()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 5078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6070
    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    .line 124
    return v0
.end method

.method public getAdLog()Lcom/flurry/sdk/az;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/az;

    move-result-object v0

    return-object v0
.end method

.method public getAdLog(Ljava/lang/String;)Lcom/flurry/sdk/az;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 4078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3106
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ay;->a(Ljava/lang/String;)Lcom/flurry/sdk/az;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public getAdObject()Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method public getAdUnit()Lcom/flurry/sdk/cs;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 112
    return-object v0
.end method

.method public initLayout()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected isViewAttachedToActivity()Z
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fViewAttachedToWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/gz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onActivityStart()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->dismissProgressDialog()V

    .line 93
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 134
    iget-object v0, p0, Lcom/flurry/sdk/gz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/gz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    return-void
.end method

.method public onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 213
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 190
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onkey,keycode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 193
    sget-object v1, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onViewBack()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gz$a;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public onViewClose()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gz$a;->b()V

    .line 75
    :cond_0
    return-void
.end method

.method public onViewError()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gz$a;->c()V

    .line 81
    :cond_0
    return-void
.end method

.method public onViewLoadTimeout()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public removeTimerListener()V
    .locals 2

    .prologue
    .line 231
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/gz;->f:J

    .line 232
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gz;->g:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 233
    return-void
.end method

.method public setAdFrameIndex(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/au;->a(I)V

    .line 129
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 220
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {v0, p1}, Lcom/flurry/sdk/fe;->b(Landroid/app/Activity;I)Z

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 151
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    if-nez v1, :cond_3

    .line 157
    if-eqz v0, :cond_2

    .line 158
    sget-object v1, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    const-string v2, "Create and show progress bar"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 166
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->addTimerListener()V

    goto :goto_0

    .line 168
    :cond_2
    sget-object v0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    const-string v1, "Context is null, cannot create progress dialog."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    const-string v1, "Show progress bar."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/gz;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    invoke-virtual {p0}, Lcom/flurry/sdk/gz;->addTimerListener()V

    goto :goto_0
.end method
