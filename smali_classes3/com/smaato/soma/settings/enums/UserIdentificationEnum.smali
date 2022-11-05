.class public final enum Lcom/smaato/soma/settings/enums/UserIdentificationEnum;
.super Ljava/lang/Enum;
.source "UserIdentificationEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/settings/enums/UserIdentificationEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARRIER:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum CARRIER_CODE:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum COPPA:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum EMAIL:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum FACEBOOK_ATTRIBUTION_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum GOOGLE_ADVERTISING_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field public static final enum IMEI:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

.field private static final synthetic b:[Lcom/smaato/soma/settings/enums/UserIdentificationEnum;


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
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "FACEBOOK_ATTRIBUTION_ID"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->FACEBOOK_ATTRIBUTION_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 8
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "GOOGLE_ADVERTISING_ID"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->GOOGLE_ADVERTISING_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 10
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "CARRIER"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 12
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "CARRIER_CODE"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER_CODE:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 14
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "IMEI"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->IMEI:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 16
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "EMAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->EMAIL:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 18
    new-instance v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "COPPA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->COPPA:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    sget-object v1, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->FACEBOOK_ATTRIBUTION_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->GOOGLE_ADVERTISING_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER_CODE:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->IMEI:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->EMAIL:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->COPPA:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->b:[Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    .line 23
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->FACEBOOK_ATTRIBUTION_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "FACEBOOK_ATTRIBUTION_ID"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->GOOGLE_ADVERTISING_ID:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "GOOGLE_ADVERTISING_ID"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "CARRIER"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->CARRIER_CODE:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "CARRIER_CODE"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->IMEI:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "IMEI"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->EMAIL:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "EMAIL"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->COPPA:Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    const-string v1, "COPPA"

    iput-object v1, v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/settings/enums/UserIdentificationEnum;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/settings/enums/UserIdentificationEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->b:[Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    invoke-virtual {v0}, [Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/settings/enums/UserIdentificationEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/settings/enums/UserIdentificationEnum;->a:Ljava/lang/String;

    return-object v0
.end method
