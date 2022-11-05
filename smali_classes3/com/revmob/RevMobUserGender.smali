.class public final enum Lcom/revmob/RevMobUserGender;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/revmob/RevMobUserGender;

.field public static final enum FEMALE:Lcom/revmob/RevMobUserGender;

.field public static final enum MALE:Lcom/revmob/RevMobUserGender;

.field public static final enum UNDEFINED:Lcom/revmob/RevMobUserGender;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/revmob/RevMobUserGender;

    const-string v1, "MALE"

    const-string v2, "male"

    invoke-direct {v0, v1, v3, v2}, Lcom/revmob/RevMobUserGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobUserGender;->MALE:Lcom/revmob/RevMobUserGender;

    new-instance v0, Lcom/revmob/RevMobUserGender;

    const-string v1, "FEMALE"

    const-string v2, "female"

    invoke-direct {v0, v1, v4, v2}, Lcom/revmob/RevMobUserGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobUserGender;->FEMALE:Lcom/revmob/RevMobUserGender;

    new-instance v0, Lcom/revmob/RevMobUserGender;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/revmob/RevMobUserGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobUserGender;->UNDEFINED:Lcom/revmob/RevMobUserGender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/revmob/RevMobUserGender;

    sget-object v1, Lcom/revmob/RevMobUserGender;->MALE:Lcom/revmob/RevMobUserGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/RevMobUserGender;->FEMALE:Lcom/revmob/RevMobUserGender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/revmob/RevMobUserGender;->UNDEFINED:Lcom/revmob/RevMobUserGender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/revmob/RevMobUserGender;->$VALUES:[Lcom/revmob/RevMobUserGender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/revmob/RevMobUserGender;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revmob/RevMobUserGender;
    .locals 1

    const-class v0, Lcom/revmob/RevMobUserGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/revmob/RevMobUserGender;

    return-object v0
.end method

.method public static values()[Lcom/revmob/RevMobUserGender;
    .locals 1

    sget-object v0, Lcom/revmob/RevMobUserGender;->$VALUES:[Lcom/revmob/RevMobUserGender;

    invoke-virtual {v0}, [Lcom/revmob/RevMobUserGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revmob/RevMobUserGender;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/RevMobUserGender;->value:Ljava/lang/String;

    return-object v0
.end method
