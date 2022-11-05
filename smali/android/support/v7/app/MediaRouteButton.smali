.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$a;
    }
.end annotation


# static fields
.field private static final m:[I

.field private static final n:[I


# instance fields
.field private final a:Landroid/support/v7/media/g;

.field private final b:Landroid/support/v7/app/MediaRouteButton$a;

.field private c:Landroid/support/v7/media/f;

.field private d:Landroid/support/v7/app/r;

.field private e:Z

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/content/res/ColorStateList;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->m:[I

    .line 111
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->n:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 120
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-static {p1, p3}, Landroid/support/v7/app/t;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    sget-object v0, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    .line 92
    invoke-static {}, Landroid/support/v7/app/r;->a()Landroid/support/v7/app/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->d:Landroid/support/v7/app/r;

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/support/v7/media/g;->a(Landroid/content/Context;)Landroid/support/v7/media/g;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    .line 129
    new-instance v1, Landroid/support/v7/app/MediaRouteButton$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteButton$a;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->b:Landroid/support/v7/app/MediaRouteButton$a;

    .line 131
    sget-object v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_buttonTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->j:Landroid/content/res/ColorStateList;

    .line 134
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/MediaRouteButton;->k:I

    .line 138
    sget v1, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/MediaRouteButton;->l:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->c()V

    .line 143
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    .line 144
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteButton;->setLongClickable(Z)V

    .line 145
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 535
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->i:Z

    if-eqz v0, :cond_0

    .line 536
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connecting:I

    .line 542
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    return-void

    .line 537
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->g:Z

    if-eqz v0, :cond_1

    .line 538
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connected:I

    goto :goto_0

    .line 540
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_disconnected:I

    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 270
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, Landroid/app/Activity;

    .line 275
    :goto_1
    return-object v0

    .line 273
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFragmentManager()Landroid/support/v4/app/u;
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 260
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 261
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/u;

    move-result-object v1

    .line 232
    if-nez v1, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    invoke-virtual {v2}, Landroid/support/v7/media/g;->c()Landroid/support/v7/media/g$g;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->o()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/f;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 238
    :cond_2
    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 239
    const-string v1, "MediaRouteButton"

    const-string v2, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->d:Landroid/support/v7/app/r;

    .line 243
    invoke-virtual {v0}, Landroid/support/v7/app/r;->b()Landroid/support/v7/app/o;

    move-result-object v0

    .line 244
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/o;->a(Landroid/support/v7/media/f;)V

    .line 245
    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/o;->show(Landroid/support/v4/app/u;Ljava/lang/String;)V

    .line 255
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_4
    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 248
    const-string v1, "MediaRouteButton"

    const-string v2, "showDialog(): Route controller dialog already showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->d:Landroid/support/v7/app/r;

    .line 252
    invoke-virtual {v0}, Landroid/support/v7/app/r;->c()Landroid/support/v7/app/q;

    move-result-object v0

    .line 253
    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/q;->show(Landroid/support/v4/app/u;Ljava/lang/String;)V

    goto :goto_1
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    invoke-virtual {v1}, Landroid/support/v7/media/g;->c()Landroid/support/v7/media/g$g;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->o()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v1, v3}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/f;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    .line 497
    :goto_0
    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    .line 499
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->g:Z

    if-eq v4, v3, :cond_0

    .line 500
    iput-boolean v3, p0, Landroid/support/v7/app/MediaRouteButton;->g:Z

    move v2, v0

    .line 503
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->i:Z

    if-eq v4, v1, :cond_1

    .line 504
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->i:Z

    move v2, v0

    .line 508
    :cond_1
    if-eqz v2, :cond_2

    .line 509
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->c()V

    .line 510
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 512
    :cond_2
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    if-eqz v4, :cond_3

    .line 513
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    .line 516
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 518
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    if-eqz v4, :cond_8

    .line 519
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_5

    .line 520
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 531
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v3, v2

    .line 496
    goto :goto_0

    :cond_7
    move v1, v2

    .line 497
    goto :goto_1

    .line 522
    :cond_8
    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    .line 525
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 526
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 528
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 352
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 354
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 355
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public getDialogFactory()Landroid/support/v7/app/r;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->d:Landroid/support/v7/app/r;

    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/f;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    .line 414
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->b:Landroid/support/v7/app/MediaRouteButton$a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->b()V

    .line 418
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 334
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 340
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->i:Z

    if-eqz v1, :cond_1

    .line 341
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->n:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 342
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->g:Z

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->m:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    .line 423
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->b:Landroid/support/v7/app/MediaRouteButton$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 427
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 428
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 479
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 481
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 483
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 484
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 485
    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 486
    sub-int v1, v3, v2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 488
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v4

    add-int v4, v1, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 433
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 434
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 435
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 437
    iget v4, p0, Landroid/support/v7/app/MediaRouteButton;->k:I

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    .line 438
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v0, v7

    .line 437
    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 439
    iget v0, p0, Landroid/support/v7/app/MediaRouteButton;->l:I

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v1, v7

    .line 439
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 443
    sparse-switch v5, :sswitch_data_0

    move v1, v4

    .line 457
    :goto_1
    sparse-switch v6, :sswitch_data_1

    .line 470
    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 471
    return-void

    :cond_1
    move v0, v1

    .line 438
    goto :goto_0

    :sswitch_0
    move v1, v3

    .line 446
    goto :goto_1

    .line 448
    :sswitch_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :sswitch_2
    move v0, v2

    .line 460
    goto :goto_2

    .line 462
    :sswitch_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 457
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 290
    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->a()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public performLongClick()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    :goto_0
    return v0

    .line 302
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->h:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 303
    goto :goto_0

    .line 306
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 307
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->getLocationOnScreen([I)V

    .line 309
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v5

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v6

    .line 314
    aget v7, v2, v0

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 315
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 317
    sget v9, Landroid/support/v7/mediarouter/R$string;->mr_button_content_description:I

    invoke-static {v4, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 319
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v7, v3, :cond_2

    .line 321
    const v3, 0x800035

    aget v2, v2, v1

    sub-int v2, v8, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {v4, v3, v2, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 327
    :goto_1
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 328
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 325
    :cond_2
    const/16 v2, 0x51

    invoke-virtual {v4, v2, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0

    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteButton;->h:Z

    .line 284
    return-void
.end method

.method public setDialogFactory(Landroid/support/v7/app/r;)V
    .locals 2

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->d:Landroid/support/v7/app/r;

    .line 206
    return-void
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b/a/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 371
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    .line 372
    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 374
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 375
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 378
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 379
    return-void

    :cond_3
    move v0, v1

    .line 375
    goto :goto_0
.end method

.method public setRouteSelector(Landroid/support/v7/media/f;)V
    .locals 2

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->e:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->b:Landroid/support/v7/app/MediaRouteButton$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->b:Landroid/support/v7/app/MediaRouteButton$a;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;)V

    .line 178
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->c:Landroid/support/v7/media/f;

    .line 179
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->b()V

    .line 181
    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 405
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 407
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 405
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
