.class public final enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
.super Ljava/lang/Enum;
.source "CreditCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/annotation/CreditCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum AMEX:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum DINERS:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum DISCOVER:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum MASTERCARD:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum NONE:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

.field public static final enum VISA:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "AMEX"

    invoke-direct {v0, v1, v3}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->AMEX:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "DINERS"

    invoke-direct {v0, v1, v4}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DINERS:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DISCOVER:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "MASTERCARD"

    invoke-direct {v0, v1, v6}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->MASTERCARD:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "VISA"

    invoke-direct {v0, v1, v7}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->VISA:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->NONE:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->AMEX:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DINERS:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DISCOVER:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->MASTERCARD:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->VISA:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->NONE:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->$VALUES:[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    return-object v0
.end method

.method public static values()[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->$VALUES:[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    invoke-virtual {v0}, [Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    return-object v0
.end method
