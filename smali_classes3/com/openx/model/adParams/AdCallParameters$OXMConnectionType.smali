.class public final enum Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;
.super Ljava/lang/Enum;
.source "AdCallParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/adParams/AdCallParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OXMConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

.field public static final enum CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

.field public static final enum OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

.field public static final enum WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    .line 82
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    .line 85
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    invoke-virtual {v0}, [Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    return-object v0
.end method
