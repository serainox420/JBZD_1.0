.class final enum Lcom/mopub/mobileads/AdRequestStatusMapping$b;
.super Ljava/lang/Enum;
.source "AdRequestStatusMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdRequestStatusMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/AdRequestStatusMapping$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOADED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

.field public static final enum LOADING:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

.field public static final enum PLAYED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

.field private static final synthetic a:[Lcom/mopub/mobileads/AdRequestStatusMapping$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADING:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    const-string v1, "PLAYED"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->PLAYED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    sget-object v1, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADING:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->PLAYED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->a:[Lcom/mopub/mobileads/AdRequestStatusMapping$b;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdRequestStatusMapping$b;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/AdRequestStatusMapping$b;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->a:[Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdRequestStatusMapping$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    return-object v0
.end method
