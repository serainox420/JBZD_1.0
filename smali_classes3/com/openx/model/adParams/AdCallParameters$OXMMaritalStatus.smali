.class public final enum Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;
.super Ljava/lang/Enum;
.source "AdCallParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/adParams/AdCallParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OXMMaritalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

.field public static final enum DIVORCED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

.field public static final enum MARRIED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

.field public static final enum SINGLE:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->SINGLE:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    .line 46
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    const-string v1, "MARRIED"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->MARRIED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    .line 49
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    const-string v1, "DIVORCED"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->DIVORCED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->SINGLE:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->MARRIED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->DIVORCED:Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    invoke-virtual {v0}, [Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    return-object v0
.end method
