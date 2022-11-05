.class public Lpl/jbzd/core/ui/view/CenteredLikeButton;
.super Landroid/widget/LinearLayout;
.source "CenteredLikeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/view/CenteredLikeButton$a;,
        Lpl/jbzd/core/ui/view/CenteredLikeButton$b;,
        Lpl/jbzd/core/ui/view/CenteredLikeButton$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private c:Lcom/facebook/share/internal/LikeButton;

.field private d:Lcom/facebook/share/internal/LikeActionController;

.field private e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

.field private f:Lpl/jbzd/core/ui/view/CenteredLikeButton$c;

.field private g:Lcom/facebook/internal/FragmentWrapper;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method static synthetic a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$a;)Lpl/jbzd/core/ui/view/CenteredLikeButton$a;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->g:Lcom/facebook/internal/FragmentWrapper;

    if-nez v1, :cond_0

    .line 125
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    :cond_0
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->g:Lcom/facebook/internal/FragmentWrapper;

    .line 131
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v3

    .line 128
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->f:Lpl/jbzd/core/ui/view/CenteredLikeButton$c;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->f:Lpl/jbzd/core/ui/view/CenteredLikeButton$c;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton$c;->a(Landroid/view/View;Z)V

    .line 137
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 3

    .prologue
    .line 263
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    .line 265
    new-instance v0, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton$b;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$1;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->h:Landroid/content/BroadcastReceiver;

    .line 267
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 276
    return-void
.end method

.method static synthetic a(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a()V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lcom/facebook/share/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a(Lcom/facebook/share/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/core/ui/view/CenteredLikeButton;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/core/ui/view/CenteredLikeButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v2, v1}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 174
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 177
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c()V

    .line 178
    return-void

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 171
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d()V

    .line 190
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 193
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    new-instance v0, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;Lpl/jbzd/core/ui/view/CenteredLikeButton$1;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    .line 198
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeButton;->setBackgroundColor(I)V

    .line 184
    return-void
.end method

.method static synthetic c(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b()V

    return-void
.end method

.method static synthetic d(Lpl/jbzd/core/ui/view/CenteredLikeButton;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;)V

    .line 212
    iput-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->h:Landroid/content/BroadcastReceiver;

    .line 218
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton$a;->a()V

    .line 221
    iput-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->e:Lpl/jbzd/core/ui/view/CenteredLikeButton$a;

    .line 224
    :cond_1
    iput-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    .line 225
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 146
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    const-string v1, "object_id"

    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a:Ljava/lang/String;

    const-string v3, ""

    .line 282
    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "object_type"

    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 285
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, v4}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->setGravity(I)V

    .line 96
    new-instance v2, Lcom/facebook/share/internal/LikeButton;

    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->d:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, p1, v0}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v2, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    new-instance v2, Lpl/jbzd/core/ui/view/CenteredLikeButton$1;

    invoke-direct {v2, p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton$1;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lpl/jbzd/core/ui/view/CenteredLikeButton$2;

    invoke-direct {v0, p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton$2;-><init>(Lpl/jbzd/core/ui/view/CenteredLikeButton;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->c:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeButton;->setBackgroundColor(I)V

    .line 116
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz p2, :cond_2

    .line 156
    :goto_0
    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p2, v1, :cond_1

    .line 158
    :cond_0
    invoke-direct {p0, v0, p2}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 159
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b()V

    .line 161
    :cond_1
    return-void

    .line 154
    :cond_2
    sget-object p2, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 61
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->i:Z

    .line 62
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->b()V

    .line 63
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->g:Lcom/facebook/internal/FragmentWrapper;

    .line 81
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->g:Lcom/facebook/internal/FragmentWrapper;

    .line 77
    return-void
.end method

.method public setOnLikeClickListener(Lpl/jbzd/core/ui/view/CenteredLikeButton$c;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lpl/jbzd/core/ui/view/CenteredLikeButton;->f:Lpl/jbzd/core/ui/view/CenteredLikeButton$c;

    .line 86
    return-void
.end method
