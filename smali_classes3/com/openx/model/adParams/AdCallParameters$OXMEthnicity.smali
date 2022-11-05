.class public final enum Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;
.super Ljava/lang/Enum;
.source "AdCallParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/adParams/AdCallParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OXMEthnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

.field public static final enum AFRICAN_AMERICAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

.field public static final enum ASIAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

.field public static final enum HISPANIC:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

.field public static final enum OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

.field public static final enum WHITE:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    const-string v1, "AFRICAN_AMERICAN"

    invoke-direct {v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->AFRICAN_AMERICAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    .line 61
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    const-string v1, "ASIAN"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->ASIAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    .line 64
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    const-string v1, "HISPANIC"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->HISPANIC:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    .line 67
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    const-string v1, "WHITE"

    invoke-direct {v0, v1, v5}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->WHITE:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    .line 70
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->AFRICAN_AMERICAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->ASIAN:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->HISPANIC:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->WHITE:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    invoke-virtual {v0}, [Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    return-object v0
.end method
