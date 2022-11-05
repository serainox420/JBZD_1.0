.class public final enum Lcom/openx/model/adParams/AdCallParameters$OXMGender;
.super Ljava/lang/Enum;
.source "AdCallParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/adParams/AdCallParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OXMGender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/adParams/AdCallParameters$OXMGender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMGender;

.field public static final enum FEMALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

.field public static final enum MALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

.field public static final enum OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMGender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/openx/model/adParams/AdCallParameters$OXMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->MALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    .line 31
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/adParams/AdCallParameters$OXMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->FEMALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    .line 34
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/adParams/AdCallParameters$OXMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->MALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->FEMALE:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->OTHER:Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMGender;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/adParams/AdCallParameters$OXMGender;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/adParams/AdCallParameters$OXMGender;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->$VALUES:[Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    invoke-virtual {v0}, [Lcom/openx/model/adParams/AdCallParameters$OXMGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    return-object v0
.end method
