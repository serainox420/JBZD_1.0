.class public final enum Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;
.super Ljava/lang/Enum;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AD_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

.field public static final enum NATIVE:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

.field private static final synthetic a:[Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    const-string v1, "IMAI"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    new-instance v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->NATIVE:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    sget-object v1, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->NATIVE:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->a:[Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->a:[Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    return-object v0
.end method
