.class public final enum Lcom/mobsandgeeks/saripaar/Validator$Mode;
.super Ljava/lang/Enum;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobsandgeeks/saripaar/Validator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobsandgeeks/saripaar/Validator$Mode;

.field public static final enum BURST:Lcom/mobsandgeeks/saripaar/Validator$Mode;

.field public static final enum IMMEDIATE:Lcom/mobsandgeeks/saripaar/Validator$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 919
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/Validator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;->BURST:Lcom/mobsandgeeks/saripaar/Validator$Mode;

    .line 925
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v3}, Lcom/mobsandgeeks/saripaar/Validator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;->IMMEDIATE:Lcom/mobsandgeeks/saripaar/Validator$Mode;

    .line 912
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mobsandgeeks/saripaar/Validator$Mode;

    sget-object v1, Lcom/mobsandgeeks/saripaar/Validator$Mode;->BURST:Lcom/mobsandgeeks/saripaar/Validator$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobsandgeeks/saripaar/Validator$Mode;->IMMEDIATE:Lcom/mobsandgeeks/saripaar/Validator$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;->$VALUES:[Lcom/mobsandgeeks/saripaar/Validator$Mode;

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
    .line 912
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/Validator$Mode;
    .locals 1

    .prologue
    .line 912
    const-class v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;

    return-object v0
.end method

.method public static values()[Lcom/mobsandgeeks/saripaar/Validator$Mode;
    .locals 1

    .prologue
    .line 912
    sget-object v0, Lcom/mobsandgeeks/saripaar/Validator$Mode;->$VALUES:[Lcom/mobsandgeeks/saripaar/Validator$Mode;

    invoke-virtual {v0}, [Lcom/mobsandgeeks/saripaar/Validator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobsandgeeks/saripaar/Validator$Mode;

    return-object v0
.end method
