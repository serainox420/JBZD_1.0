.class public final enum Lcom/inmobi/commons/EducationType;
.super Ljava/lang/Enum;
.source "EducationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/EducationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLEGEORGRADUATE:Lcom/inmobi/commons/EducationType;

.field public static final enum HIGHSCHOOLORLESS:Lcom/inmobi/commons/EducationType;

.field public static final enum POSTGRADUATEORABOVE:Lcom/inmobi/commons/EducationType;

.field public static final enum UNKNOWN:Lcom/inmobi/commons/EducationType;

.field private static final synthetic a:[Lcom/inmobi/commons/EducationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/inmobi/commons/EducationType;

    const-string v1, "HIGHSCHOOLORLESS"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EducationType;->HIGHSCHOOLORLESS:Lcom/inmobi/commons/EducationType;

    new-instance v0, Lcom/inmobi/commons/EducationType;

    const-string v1, "COLLEGEORGRADUATE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EducationType;->COLLEGEORGRADUATE:Lcom/inmobi/commons/EducationType;

    new-instance v0, Lcom/inmobi/commons/EducationType;

    const-string v1, "POSTGRADUATEORABOVE"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EducationType;->POSTGRADUATEORABOVE:Lcom/inmobi/commons/EducationType;

    new-instance v0, Lcom/inmobi/commons/EducationType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EducationType;->UNKNOWN:Lcom/inmobi/commons/EducationType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/commons/EducationType;

    sget-object v1, Lcom/inmobi/commons/EducationType;->HIGHSCHOOLORLESS:Lcom/inmobi/commons/EducationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/EducationType;->COLLEGEORGRADUATE:Lcom/inmobi/commons/EducationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/EducationType;->POSTGRADUATEORABOVE:Lcom/inmobi/commons/EducationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/EducationType;->UNKNOWN:Lcom/inmobi/commons/EducationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/commons/EducationType;->a:[Lcom/inmobi/commons/EducationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/inmobi/commons/EducationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/EducationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/inmobi/commons/EducationType;->a:[Lcom/inmobi/commons/EducationType;

    invoke-virtual {v0}, [Lcom/inmobi/commons/EducationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/EducationType;

    return-object v0
.end method
