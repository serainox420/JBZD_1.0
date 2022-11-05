.class final enum Lcom/adcolony/sdk/cm$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/cm$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/cm$a;

.field public static final enum b:Lcom/adcolony/sdk/cm$a;

.field public static final enum c:Lcom/adcolony/sdk/cm$a;

.field public static final enum d:Lcom/adcolony/sdk/cm$a;

.field public static final enum e:Lcom/adcolony/sdk/cm$a;

.field public static final enum f:Lcom/adcolony/sdk/cm$a;

.field public static final enum g:Lcom/adcolony/sdk/cm$a;

.field public static final enum h:Lcom/adcolony/sdk/cm$a;

.field public static final enum i:Lcom/adcolony/sdk/cm$a;

.field public static final enum j:Lcom/adcolony/sdk/cm$a;

.field public static final enum k:Lcom/adcolony/sdk/cm$a;

.field public static final enum l:Lcom/adcolony/sdk/cm$a;

.field public static final enum m:Lcom/adcolony/sdk/cm$a;

.field public static final enum n:Lcom/adcolony/sdk/cm$a;

.field public static final enum o:Lcom/adcolony/sdk/cm$a;

.field private static final synthetic p:[Lcom/adcolony/sdk/cm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->a:Lcom/adcolony/sdk/cm$a;

    .line 34
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->b:Lcom/adcolony/sdk/cm$a;

    .line 35
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_SWIPE"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->c:Lcom/adcolony/sdk/cm$a;

    .line 36
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_CLOSE_BUTTON"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->d:Lcom/adcolony/sdk/cm$a;

    .line 37
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_TAP_BACKGROUND"

    invoke-direct {v0, v1, v7}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->e:Lcom/adcolony/sdk/cm$a;

    .line 38
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "REDIRECT_TO_CATALOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->f:Lcom/adcolony/sdk/cm$a;

    .line 39
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "DEV_REDEMPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->g:Lcom/adcolony/sdk/cm$a;

    .line 40
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "NATURAL_TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->h:Lcom/adcolony/sdk/cm$a;

    .line 41
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "FROM_JS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->i:Lcom/adcolony/sdk/cm$a;

    .line 42
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "HARDWARE_BACK_BUTTON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->j:Lcom/adcolony/sdk/cm$a;

    .line 43
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "ACTIVITY_HIDDEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->k:Lcom/adcolony/sdk/cm$a;

    .line 44
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_SWIPE_RIGHT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->l:Lcom/adcolony/sdk/cm$a;

    .line 45
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_SWIPE_LEFT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->m:Lcom/adcolony/sdk/cm$a;

    .line 46
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_SWIPE_DOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->n:Lcom/adcolony/sdk/cm$a;

    .line 47
    new-instance v0, Lcom/adcolony/sdk/cm$a;

    const-string v1, "USER_SWIPE_UP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$a;->o:Lcom/adcolony/sdk/cm$a;

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->a:Lcom/adcolony/sdk/cm$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/cm$a;->b:Lcom/adcolony/sdk/cm$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/cm$a;->c:Lcom/adcolony/sdk/cm$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/cm$a;->d:Lcom/adcolony/sdk/cm$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adcolony/sdk/cm$a;->e:Lcom/adcolony/sdk/cm$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adcolony/sdk/cm$a;->f:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adcolony/sdk/cm$a;->g:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adcolony/sdk/cm$a;->h:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adcolony/sdk/cm$a;->i:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adcolony/sdk/cm$a;->j:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adcolony/sdk/cm$a;->k:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adcolony/sdk/cm$a;->l:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adcolony/sdk/cm$a;->m:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adcolony/sdk/cm$a;->n:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adcolony/sdk/cm$a;->o:Lcom/adcolony/sdk/cm$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adcolony/sdk/cm$a;->p:[Lcom/adcolony/sdk/cm$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/cm$a;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/adcolony/sdk/cm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cm$a;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/cm$a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adcolony/sdk/cm$a;->p:[Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/cm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/cm$a;

    return-object v0
.end method
