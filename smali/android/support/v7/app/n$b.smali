.class final Landroid/support/v7/app/n$b;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/support/v7/media/g$g;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/n;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/n;Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    iput-object p1, p0, Landroid/support/v7/app/n$b;->a:Landroid/support/v7/app/n;

    .line 255
    invoke-direct {p0, p2, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 256
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n$b;->b:Landroid/view/LayoutInflater;

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/app/n$b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    aput v2, v1, v3

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    aput v2, v1, v4

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    aput v2, v1, v5

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/n$b;->c:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/n$b;->d:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/n$b;->e:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/n$b;->f:Landroid/graphics/drawable/Drawable;

    .line 266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    return-void
.end method

.method private a(Landroid/support/v7/media/g$g;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->f()Landroid/net/Uri;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/app/n$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 326
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v2, "MediaRouteChooserDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/app/n$b;->b(Landroid/support/v7/media/g$g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/media/g$g;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->n()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    instance-of v0, p1, Landroid/support/v7/media/g$f;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/support/v7/app/n$b;->f:Landroid/graphics/drawable/Drawable;

    .line 352
    :goto_0
    return-object v0

    .line 342
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/n$b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/n$b;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n$b;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 281
    .line 282
    if-nez p2, :cond_0

    .line 283
    iget-object v0, p0, Landroid/support/v7/app/n$b;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_chooser_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/n$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 287
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_desc:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->e()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->i()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->i()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 294
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 295
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->g()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 306
    if-eqz v1, :cond_2

    .line 307
    invoke-direct {p0, v0}, Landroid/support/v7/app/n$b;->a(Landroid/support/v7/media/g$g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_2
    return-object p2

    :cond_3
    move v3, v4

    .line 293
    goto :goto_0

    .line 299
    :cond_4
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/support/v7/app/n$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->g()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0, p3}, Landroid/support/v7/app/n$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 315
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->v()V

    .line 317
    iget-object v0, p0, Landroid/support/v7/app/n$b;->a:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->dismiss()V

    .line 319
    :cond_0
    return-void
.end method
