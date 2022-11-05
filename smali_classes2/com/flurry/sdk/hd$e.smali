.class final Lcom/flurry/sdk/hd$e;
.super Lcom/flurry/sdk/hd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1281
    const-string v1, "b"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v1, "t"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v1, "m"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string v1, "c"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v1, "l"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string v1, "r"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 249
    sput-object v0, Lcom/flurry/sdk/hd$e;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hd$c;-><init>(B)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/flurry/sdk/hd$e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, -0x1

    return v0
.end method

.method public final a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 259
    invoke-static {p1}, Lcom/flurry/sdk/hd$e;->b(Lcom/flurry/sdk/cr;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hd$e;->c(Lcom/flurry/sdk/cr;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 260
    iget-object v1, p1, Lcom/flurry/sdk/cr;->e:Ljava/lang/String;

    .line 261
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 262
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 264
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/flurry/sdk/hd$e;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    :cond_0
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/flurry/sdk/hd$e;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    :cond_1
    return-object v0
.end method
