.class final enum Lcom/mopub/nativeads/d$a;
.super Ljava/lang/Enum;
.source "NativeAdViewHelper.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/nativeads/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD:Lcom/mopub/nativeads/d$a;

.field public static final enum EMPTY:Lcom/mopub/nativeads/d$a;

.field private static final synthetic a:[Lcom/mopub/nativeads/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/mopub/nativeads/d$a;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/mopub/nativeads/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/d$a;->EMPTY:Lcom/mopub/nativeads/d$a;

    .line 25
    new-instance v0, Lcom/mopub/nativeads/d$a;

    const-string v1, "AD"

    invoke-direct {v0, v1, v3}, Lcom/mopub/nativeads/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/nativeads/d$a;->AD:Lcom/mopub/nativeads/d$a;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/nativeads/d$a;

    sget-object v1, Lcom/mopub/nativeads/d$a;->EMPTY:Lcom/mopub/nativeads/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/nativeads/d$a;->AD:Lcom/mopub/nativeads/d$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/nativeads/d$a;->a:[Lcom/mopub/nativeads/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/d$a;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/mopub/nativeads/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/d$a;

    return-object v0
.end method

.method public static values()[Lcom/mopub/nativeads/d$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mopub/nativeads/d$a;->a:[Lcom/mopub/nativeads/d$a;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/d$a;

    return-object v0
.end method
