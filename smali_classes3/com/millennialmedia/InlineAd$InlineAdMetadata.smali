.class public Lcom/millennialmedia/InlineAd$InlineAdMetadata;
.super Lcom/millennialmedia/internal/AdPlacementMetadata;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineAdMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/AdPlacementMetadata",
        "<",
        "Lcom/millennialmedia/InlineAd$InlineAdMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/InlineAd$AdSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    const-string v0, "inline"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;-><init>(Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method public getAdSize()Lcom/millennialmedia/InlineAd$AdSize;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    return-object v0
.end method

.method public getHeight(Lcom/millennialmedia/InlineAd;)I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    .line 254
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    if-nez v0, :cond_1

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v0

    goto :goto_0
.end method

.method public getHeightPixels(Lcom/millennialmedia/InlineAd;)I
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v1, v1, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    int-to-float v1, v1

    .line 280
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 279
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 288
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth(Lcom/millennialmedia/InlineAd;)I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    .line 239
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWidthPixels(Lcom/millennialmedia/InlineAd;)I
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    iget v1, v1, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    int-to-float v1, v1

    .line 263
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 271
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    if-nez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 2

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provided AdSize cannot be null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-object p0

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->a:Lcom/millennialmedia/InlineAd$AdSize;

    goto :goto_0
.end method

.method public toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/InlineAd;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v0

    .line 297
    const-string v1, "width"

    invoke-virtual {p0, p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidth(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v1, "height"

    invoke-virtual {p0, p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeight(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v1, "refreshRate"

    invoke-virtual {p1}, Lcom/millennialmedia/InlineAd;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-object v0
.end method
