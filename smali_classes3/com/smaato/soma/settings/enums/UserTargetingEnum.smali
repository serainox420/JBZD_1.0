.class public final enum Lcom/smaato/soma/settings/enums/UserTargetingEnum;
.super Ljava/lang/Enum;
.source "UserTargetingEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/settings/enums/UserTargetingEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum COUNTRY:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum COUNTRY_CODE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum GENDER:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum KWS:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum LOCATION:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field public static final enum ZIP:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

.field private static final synthetic b:[Lcom/smaato/soma/settings/enums/UserTargetingEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->LOCATION:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 8
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "COUNTRY"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 10
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "COUNTRY_CODE"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY_CODE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 12
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "ZIP"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->ZIP:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 14
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "AGE"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->AGE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 16
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "GENDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->GENDER:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 18
    new-instance v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "KWS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/settings/enums/UserTargetingEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->KWS:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    sget-object v1, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->LOCATION:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY_CODE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->ZIP:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->AGE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->GENDER:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->KWS:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->b:[Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    .line 23
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->LOCATION:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "LOCATION"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "COUNTRY"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->COUNTRY_CODE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "COUNTRY_CODE"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->ZIP:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "ZIP"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->AGE:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "AGE"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->GENDER:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "GENDER"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->KWS:Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    const-string v1, "GENDER"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    .line 30
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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/settings/enums/UserTargetingEnum;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/settings/enums/UserTargetingEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->b:[Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    invoke-virtual {v0}, [Lcom/smaato/soma/settings/enums/UserTargetingEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/settings/enums/UserTargetingEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/settings/enums/UserTargetingEnum;->a:Ljava/lang/String;

    return-object v0
.end method
