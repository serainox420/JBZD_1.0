.class final enum Lcom/smaato/soma/ExpandedBannerActivity$a;
.super Ljava/lang/Enum;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/ExpandedBannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/ExpandedBannerActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/smaato/soma/ExpandedBannerActivity$a;

.field public static final enum b:Lcom/smaato/soma/ExpandedBannerActivity$a;

.field public static final enum c:Lcom/smaato/soma/ExpandedBannerActivity$a;

.field public static final enum d:Lcom/smaato/soma/ExpandedBannerActivity$a;

.field public static final enum e:Lcom/smaato/soma/ExpandedBannerActivity$a;

.field private static final synthetic f:[Lcom/smaato/soma/ExpandedBannerActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 749
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ExpandedBannerActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->a:Lcom/smaato/soma/ExpandedBannerActivity$a;

    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/ExpandedBannerActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->b:Lcom/smaato/soma/ExpandedBannerActivity$a;

    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/ExpandedBannerActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->c:Lcom/smaato/soma/ExpandedBannerActivity$a;

    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/ExpandedBannerActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->d:Lcom/smaato/soma/ExpandedBannerActivity$a;

    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/ExpandedBannerActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->e:Lcom/smaato/soma/ExpandedBannerActivity$a;

    .line 748
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smaato/soma/ExpandedBannerActivity$a;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->a:Lcom/smaato/soma/ExpandedBannerActivity$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->b:Lcom/smaato/soma/ExpandedBannerActivity$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->c:Lcom/smaato/soma/ExpandedBannerActivity$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->d:Lcom/smaato/soma/ExpandedBannerActivity$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->e:Lcom/smaato/soma/ExpandedBannerActivity$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->f:[Lcom/smaato/soma/ExpandedBannerActivity$a;

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
    .line 748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/ExpandedBannerActivity$a;
    .locals 1

    .prologue
    .line 748
    const-class v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity$a;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/ExpandedBannerActivity$a;
    .locals 1

    .prologue
    .line 748
    sget-object v0, Lcom/smaato/soma/ExpandedBannerActivity$a;->f:[Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-virtual {v0}, [Lcom/smaato/soma/ExpandedBannerActivity$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/ExpandedBannerActivity$a;

    return-object v0
.end method
