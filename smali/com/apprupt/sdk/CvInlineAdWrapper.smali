.class public Lcom/apprupt/sdk/CvInlineAdWrapper;
.super Lcom/apprupt/sdk/CvAdWrapper;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InlineAdWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;
    }
.end annotation


# instance fields
.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private c:Lcom/apprupt/sdk/MRAIDView;

.field private d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

.field private e:Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

.field private f:Lcom/apprupt/sdk/CvCloseButton;

.field private g:Lcom/apprupt/sdk/CvExpandActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvAdWrapper;-><init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V

    .line 23
    const-string v0, "InlineAdWrapper"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->b:Lcom/apprupt/sdk/Logger$log;

    .line 114
    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    .line 115
    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    .line 116
    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->e:Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    .line 117
    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    .line 118
    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    .line 122
    invoke-virtual {p2}, Lcom/apprupt/sdk/CvMediator;->g()Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/CvExpandActivity;)Lcom/apprupt/sdk/CvExpandActivity;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->b:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    invoke-direct {v1, p0, v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    .line 164
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->p()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 166
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 167
    return-void
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/CvExpandActivity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvExpandActivity;->a(I)V

    .line 358
    :cond_0
    return-void
.end method

.method a(Lcom/apprupt/sdk/CvExpandActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    .line 310
    return-void
.end method

.method a(Lcom/apprupt/sdk/adview/CloseButtonPosition;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$4;

    invoke-direct {v0, p0, p2}, Lcom/apprupt/sdk/CvInlineAdWrapper$4;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V

    .line 286
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/apprupt/sdk/CvCloseButton;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/adview/CloseButtonPosition;)V

    iput-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/CvCloseButton$Listener;)V

    .line 292
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->addView(Landroid/view/View;)V

    .line 293
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v1, p1}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/adview/CloseButtonPosition;)V

    goto :goto_0
.end method

.method public a(Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->e:Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    .line 241
    return-void
.end method

.method public a(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/mediation/Mediator;)V

    .line 363
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->g()Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;)V

    .line 364
    return-void
.end method

.method a(Lcom/apprupt/sdk/mediation/Size;)V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInlineAdWrapper$2;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/mediation/Size;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInlineAdWrapper$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 157
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvExpandActivity;->a(Z)V

    .line 351
    :cond_0
    return-void

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->c()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->g:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvExpandActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->e:Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    .line 230
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->b()V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    return-object v0
.end method

.method c(Lcom/apprupt/sdk/mediation/Size;)V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInlineAdWrapper$3;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/mediation/Size;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 277
    return-void
.end method

.method public d()Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->e:Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;

    return-object v0
.end method

.method l()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvMediator;->b(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 128
    return-void
.end method

.method public p()Lcom/apprupt/sdk/mediation/Size;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v0

    return-object v0
.end method

.method q()V
    .locals 2

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/CvCloseButton$Listener;)V

    .line 301
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->d:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->f:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method r()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$5;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$5;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method s()Landroid/view/View;
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 325
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 326
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method t()Lcom/apprupt/sdk/adview/ExpandProperties;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->f()Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/apprupt/sdk/adview/OrientationProperties;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->g()Lcom/apprupt/sdk/adview/OrientationProperties;

    move-result-object v0

    return-object v0
.end method

.method v()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->e()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
