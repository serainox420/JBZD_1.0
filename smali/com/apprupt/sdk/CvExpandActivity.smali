.class public Lcom/apprupt/sdk/CvExpandActivity;
.super Lcom/apprupt/sdk/CvBaseActivityImpl;
.source "CvExpandActivity.java"

# interfaces
.implements Lcom/apprupt/sdk/adview/ExpandedAdWrapperListener;


# static fields
.field static e:Lcom/apprupt/sdk/adview/AdViewWrapper;

.field private static final f:Lcom/apprupt/sdk/Logger$log;

.field private static volatile p:I

.field private static volatile q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/apprupt/sdk/CvInlineAdWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/apprupt/sdk/adview/AdViewWrapper;

.field private i:Lcom/apprupt/sdk/CvCloseButton;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Timer;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Lifecycle.ExpandView"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvExpandActivity;->f:Lcom/apprupt/sdk/Logger$log;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/apprupt/sdk/CvExpandActivity;->e:Lcom/apprupt/sdk/adview/AdViewWrapper;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/CvExpandActivity;->p:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvExpandActivity;->q:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    .line 32
    iput-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    .line 33
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->j:Z

    .line 34
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->k:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->l:Z

    .line 36
    iput-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    .line 37
    iput-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->n:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/apprupt/sdk/CvExpandActivity$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvExpandActivity$1;-><init>(Lcom/apprupt/sdk/CvExpandActivity;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->o:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvExpandActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvExpandActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity;->n:Ljava/lang/Runnable;

    return-object p1
.end method

.method static a(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/apprupt/sdk/CvExpandActivity$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvExpandActivity$2;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvExpandActivity;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/apprupt/sdk/CvExpandActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvExpandActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->t()Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v4

    .line 102
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->d()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 104
    :goto_0
    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->e()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v1

    :cond_0
    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    const v1, 0xf42bb

    .line 112
    invoke-virtual {p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->s()Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 116
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v5, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvContext;->b(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->v()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->n:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/apprupt/sdk/CvCloseButton;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    .line 122
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    new-instance v5, Lcom/apprupt/sdk/CvExpandActivity$3;

    invoke-direct {v5, p0}, Lcom/apprupt/sdk/CvExpandActivity$3;-><init>(Lcom/apprupt/sdk/CvExpandActivity;)V

    invoke-virtual {v0, v5}, Lcom/apprupt/sdk/CvCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v5, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v5, v0}, Lcom/apprupt/sdk/CvCloseButton;->setVisibility(I)V

    .line 129
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 130
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 132
    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {v4, v1, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v4}, Lcom/apprupt/sdk/CvCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p1, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvExpandActivity;)V

    .line 139
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->u()Lcom/apprupt/sdk/adview/OrientationProperties;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->b()Lcom/apprupt/sdk/adview/Orientation;

    move-result-object v1

    .line 146
    sget-object v4, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    if-eq v1, v4, :cond_5

    .line 147
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    if-ne v1, v0, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/CvExpandActivity;->setRequestedOrientation(I)V

    .line 151
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 103
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 128
    goto :goto_1

    :cond_4
    move v2, v3

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvExpandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvExpandActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/apprupt/sdk/CvExpandActivity;->p:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apprupt/sdk/CvExpandActivity;->p:I

    return v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/apprupt/sdk/CvExpandActivity;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    const-class v4, Lcom/apprupt/sdk/CvExpandActivity;

    monitor-enter v4

    .line 157
    :try_start_0
    sget-object v0, Lcom/apprupt/sdk/CvExpandActivity;->e:Lcom/apprupt/sdk/adview/AdViewWrapper;

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    .line 158
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvExpandActivity;->finish()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->setContentView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->a()Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v4

    .line 172
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 173
    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->d()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 174
    :goto_1
    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->e()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v1

    :cond_2
    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const v1, 0xf42bb

    .line 178
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v5, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    monitor-enter v5

    .line 180
    :try_start_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v2

    .line 186
    :goto_2
    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 188
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v6}, Lcom/apprupt/sdk/adview/AdViewWrapper;->c()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvContext;->b(Landroid/content/Context;)V

    .line 191
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    new-instance v0, Lcom/apprupt/sdk/CvCloseButton;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    .line 196
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    new-instance v5, Lcom/apprupt/sdk/CvExpandActivity$4;

    invoke-direct {v5, p0}, Lcom/apprupt/sdk/CvExpandActivity$4;-><init>(Lcom/apprupt/sdk/CvExpandActivity;)V

    invoke-virtual {v0, v5}, Lcom/apprupt/sdk/CvCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v5, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v4}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v5, v0}, Lcom/apprupt/sdk/CvCloseButton;->setVisibility(I)V

    .line 203
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 204
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 205
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {v4, v1, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v4}, Lcom/apprupt/sdk/CvCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0, p0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->a(Lcom/apprupt/sdk/adview/ExpandedAdWrapperListener;)V

    .line 214
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->e()V

    .line 216
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->b()Lcom/apprupt/sdk/adview/OrientationProperties;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->b()Lcom/apprupt/sdk/adview/Orientation;

    move-result-object v1

    .line 218
    sget-object v4, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    if-eq v1, v4, :cond_9

    .line 219
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    if-ne v1, v0, :cond_8

    :goto_4
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/CvExpandActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 173
    goto/16 :goto_1

    .line 184
    :cond_5
    :try_start_3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v6}, Lcom/apprupt/sdk/adview/AdViewWrapper;->c()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    move v0, v3

    goto/16 :goto_2

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    move v0, v2

    .line 202
    goto :goto_3

    :cond_8
    move v2, v3

    .line 219
    goto :goto_4

    .line 220
    :cond_9
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvExpandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/apprupt/sdk/CvExpandActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvExpandActivity$5;-><init>(Lcom/apprupt/sdk/CvExpandActivity;I)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity;->i:Lcom/apprupt/sdk/CvCloseButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvCloseButton;->setVisibility(I)V

    .line 302
    return-void

    .line 301
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/high16 v3, 0x1000000

    const/4 v0, -0x1

    .line 70
    invoke-super {p0, p1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvExpandActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvExpandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    const-string v2, "mraidId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    :cond_1
    if-lez v0, :cond_2

    .line 88
    sget-object v1, Lcom/apprupt/sdk/CvExpandActivity;->q:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    .line 89
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvExpandActivity;->b(Lcom/apprupt/sdk/CvInlineAdWrapper;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/apprupt/sdk/CvExpandActivity;->f()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onPause()V

    .line 267
    monitor-enter p0

    .line 268
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->l:Z

    .line 269
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    .line 273
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->a()V

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onRestart()V

    .line 262
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onResume()V

    .line 239
    monitor-enter p0

    .line 240
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->l:Z

    .line 241
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->j:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->j:Z

    .line 246
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    .line 247
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->m:Ljava/util/Timer;

    new-instance v1, Lcom/apprupt/sdk/CvExpandActivity$6;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvExpandActivity$6;-><init>(Lcom/apprupt/sdk/CvExpandActivity;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-static {p0}, Lcom/apprupt/sdk/CvAdColony;->a(Landroid/app/Activity;)V

    .line 257
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->k:Z

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onStop()V

    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity;->h:Lcom/apprupt/sdk/adview/AdViewWrapper;

    invoke-interface {v0, p0}, Lcom/apprupt/sdk/adview/AdViewWrapper;->b(Lcom/apprupt/sdk/adview/ExpandedAdWrapperListener;)V

    .line 282
    :cond_0
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
