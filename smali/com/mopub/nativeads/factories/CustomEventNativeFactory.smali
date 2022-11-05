.class public Lcom/mopub/nativeads/factories/CustomEventNativeFactory;
.super Ljava/lang/Object;
.source "CustomEventNativeFactory.java"


# static fields
.field protected static a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-direct {v0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 17
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/nativeads/CustomEventNative;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative;-><init>()V

    goto :goto_0
.end method

.method public static setInstance(Lcom/mopub/nativeads/factories/CustomEventNativeFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    sput-object p0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/nativeads/CustomEventNative;",
            ">;)",
            "Lcom/mopub/nativeads/CustomEventNative;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 40
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/CustomEventNative;

    return-object v0
.end method
