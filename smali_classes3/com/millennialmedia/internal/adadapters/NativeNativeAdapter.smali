.class public Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
.super Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.source "NativeNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field c:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

.field private e:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile n:Lcom/millennialmedia/internal/adcontrollers/NativeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->g:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->h:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->i:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->j:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->k:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->l:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->m:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    return-void
.end method

.method private a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    .line 267
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V
    .locals 3

    .prologue
    .line 247
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 248
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    invoke-direct {v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;-><init>()V

    .line 250
    iput-object p1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    .line 251
    iget-object v2, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v2, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->width:I

    .line 253
    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->height:I

    .line 255
    invoke-interface {p2, v1}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 95
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move v1, v2

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 98
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    .line 100
    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load component, asset is null"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    iget v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 109
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "error when processing native asset, asset ID is not the correct length"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->f:Ljava/lang/String;

    .line 117
    const/4 v5, 0x6

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string v5, "100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_2

    .line 120
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 121
    iget-object v5, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 122
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 127
    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load title component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_3
    const-string v5, "101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 133
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_4

    .line 134
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 135
    iget-object v5, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 136
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 138
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 141
    :cond_4
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load body component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_5
    const-string v5, "102"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_6

    .line 148
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v5, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V

    goto/16 :goto_1

    .line 162
    :cond_6
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load icon image component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 166
    :cond_7
    const-string v5, "103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 167
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_8

    .line 168
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v5, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;

    invoke-direct {v5, p0, v0, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V

    goto/16 :goto_1

    .line 182
    :cond_8
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load main image component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 186
    :cond_9
    const-string v5, "104"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 187
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_a

    .line 188
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 189
    iget-object v5, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 190
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 192
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_4
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 195
    :cond_a
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load call to action text component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 200
    :cond_b
    const-string v5, "105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 201
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_c

    .line 202
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 203
    iget-object v5, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 204
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 206
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 209
    :cond_c
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load rating component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 214
    :cond_d
    const-string v5, "106"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 215
    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_e

    .line 216
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 217
    iget-object v5, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 218
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 220
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_6
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 223
    :cond_e
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v4, "Unable to load disclaimer component, asset not the expected type"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 229
    :cond_f
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component from asset, asset type is unrecognized <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 235
    :cond_10
    const-wide/16 v0, 0x1388

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 240
    :goto_7
    return v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->d:Ljava/lang/String;

    const-string v1, "Error occurred when loading native component info"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->e:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getBodyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method public getCallToActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->k:Ljava/util/List;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    .line 359
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisclaimerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->m:Ljava/util/List;

    return-object v0
.end method

.method public getIconImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->i:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMainImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->j:Ljava/util/List;

    return-object v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->g:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->f:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->e:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    .line 88
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/NativeController;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->n:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->init(Ljava/lang/String;)V

    .line 90
    return-void
.end method
