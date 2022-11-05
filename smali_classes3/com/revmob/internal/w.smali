.class public final enum Lcom/revmob/internal/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/revmob/internal/w;

.field public static final enum b:Lcom/revmob/internal/w;

.field public static final enum c:Lcom/revmob/internal/w;

.field private static enum d:Lcom/revmob/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/revmob/internal/w;

    const-string v1, "DOWNLOAD_CREATES_ERRORS"

    invoke-direct {v0, v1, v2}, Lcom/revmob/internal/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    new-instance v0, Lcom/revmob/internal/w;

    const-string v1, "CLICK_REDIRECTION_ERRORS"

    invoke-direct {v0, v1, v3}, Lcom/revmob/internal/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    new-instance v0, Lcom/revmob/internal/w;

    const-string v1, "EXCEPTIONS"

    invoke-direct {v0, v1, v4}, Lcom/revmob/internal/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    new-instance v0, Lcom/revmob/internal/w;

    const-string v1, "AD_RECEIVED"

    invoke-direct {v0, v1, v5}, Lcom/revmob/internal/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/internal/w;->d:Lcom/revmob/internal/w;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/revmob/internal/w;

    sget-object v1, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/revmob/internal/w;->d:Lcom/revmob/internal/w;

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
