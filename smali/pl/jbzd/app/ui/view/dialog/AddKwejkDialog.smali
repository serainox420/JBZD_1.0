.class public Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;
.super Landroid/app/DialogFragment;
.source "AddKwejkDialog.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Lcom/mobsandgeeks/saripaar/Validator;

.field button:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field close:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field image:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field loader:Lpl/jbzd/core/ui/view/LoaderLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field tagList:Lpl/jbzd/app/ui/view/TagGroup;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field tags:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;
        message = "Lista tag\u00f3w nie mo\u017ce by\u0107 pusta"
    .end annotation
.end field

.field title:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;
        message = "Tytu\u0142 nie mo\u017ce pozosta\u0107 pusty"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    :cond_0
    const-string v0, ""

    .line 525
    :cond_1
    :goto_0
    return-object v0

    .line 519
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 522
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 462
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 465
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 466
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    invoke-direct {p0, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 482
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)Lcom/mobsandgeeks/saripaar/Validator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    invoke-direct {p0, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/EditText;->append(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x44480000    # 800.0f

    .line 335
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    .line 337
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 339
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 342
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 343
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 344
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 347
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 351
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    float-to-double v4, v2

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 354
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_0
    if-eqz v0, :cond_2

    .line 366
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    :cond_1
    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    .line 371
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x26

    invoke-static {v2}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 375
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 377
    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 378
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 383
    :cond_2
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->setVisibility(I)V

    .line 331
    :cond_0
    return-void

    .line 329
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 423
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x1

    const v1, 0x7f0c0194

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->setStyle(II)V

    .line 83
    if-nez p1, :cond_0

    .line 85
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/api/ApiService;->media_default_tags(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f040040

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a:Lbutterknife/Unbinder;

    .line 135
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 317
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 321
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    if-eqz p1, :cond_2

    .line 300
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "path"

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    const-string v0, "tags"

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 310
    :cond_2
    return-void
.end method

.method public onValidationFailed(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/ValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/ValidationError;

    .line 435
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationError;->getView()Landroid/view/View;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mobsandgeeks/saripaar/ValidationError;->getCollatedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 439
    instance-of v0, v1, Lpl/jbzd/core/ui/view/EditText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 440
    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 447
    :cond_1
    return-void
.end method

.method public onValidationSucceeded()V
    .locals 6

    .prologue
    .line 388
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;

    .line 390
    if-eqz v0, :cond_2

    .line 392
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->title:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 393
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->title:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 395
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 408
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_1
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->title:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->dismissAllowingStateLoss()V

    .line 417
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    .line 144
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 149
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 150
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 151
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 152
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 153
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$2;-><init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->close:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;-><init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$4;-><init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup;->setOnTagClickListener(Lpl/jbzd/app/ui/view/TagGroup$c;)V

    .line 182
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;-><init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    if-eqz p2, :cond_3

    .line 269
    const-string v0, "tags"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    .line 272
    :cond_0
    const-string v0, "path"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p0, v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/io/File;)V

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup;->setTags(Ljava/util/List;)V

    .line 291
    :cond_2
    return-void

    .line 284
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->d:Ljava/io/File;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/io/File;)V

    goto :goto_0
.end method
