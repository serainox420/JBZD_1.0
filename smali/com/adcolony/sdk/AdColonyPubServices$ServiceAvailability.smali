.class public final enum Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/AdColonyPubServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_DISABLED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_MAINTENANCE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field public static final enum SERVICE_UNKNOWN:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field private static final synthetic a:[Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNKNOWN:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 20
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 21
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 22
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 23
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_INVISIBLE"

    invoke-direct {v0, v1, v7}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 24
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_MAINTENANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_MAINTENANCE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 25
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_DISABLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_DISABLED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 26
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    const-string v1, "SERVICE_BANNED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNKNOWN:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_MAINTENANCE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_DISABLED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->a:[Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->a:[Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    return-object v0
.end method
