.class public final enum Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/AdColonyPubServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MODAL:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

.field public static final enum NONE:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

.field public static final enum TOAST:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

.field private static final synthetic a:[Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->NONE:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    .line 34
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->TOAST:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    .line 35
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    const-string v1, "MODAL"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->MODAL:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->NONE:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->TOAST:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->MODAL:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->a:[Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->a:[Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    return-object v0
.end method
