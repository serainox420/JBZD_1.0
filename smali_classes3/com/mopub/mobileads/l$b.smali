.class final enum Lcom/mopub/mobileads/l$b;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/l$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

.field public static final enum IFRAME_RESOURCE:Lcom/mopub/mobileads/l$b;

.field public static final enum STATIC_RESOURCE:Lcom/mopub/mobileads/l$b;

.field private static final synthetic a:[Lcom/mopub/mobileads/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/mopub/mobileads/l$b;

    const-string v1, "STATIC_RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/l$b;->STATIC_RESOURCE:Lcom/mopub/mobileads/l$b;

    .line 28
    new-instance v0, Lcom/mopub/mobileads/l$b;

    const-string v1, "HTML_RESOURCE"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    .line 29
    new-instance v0, Lcom/mopub/mobileads/l$b;

    const-string v1, "IFRAME_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/l$b;->IFRAME_RESOURCE:Lcom/mopub/mobileads/l$b;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/l$b;

    sget-object v1, Lcom/mopub/mobileads/l$b;->STATIC_RESOURCE:Lcom/mopub/mobileads/l$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/l$b;->IFRAME_RESOURCE:Lcom/mopub/mobileads/l$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/l$b;->a:[Lcom/mopub/mobileads/l$b;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/l$b;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/mopub/mobileads/l$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/l$b;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/l$b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mopub/mobileads/l$b;->a:[Lcom/mopub/mobileads/l$b;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/l$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/l$b;

    return-object v0
.end method
