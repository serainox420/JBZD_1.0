.class final enum Lcom/apprupt/sdk/CvLocale;
.super Ljava/lang/Enum;
.source "CvLocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvLocale;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/CvLocale;

.field public static final enum b:Lcom/apprupt/sdk/CvLocale;

.field public static final enum c:Lcom/apprupt/sdk/CvLocale;

.field public static final enum d:Lcom/apprupt/sdk/CvLocale;

.field public static final enum e:Lcom/apprupt/sdk/CvLocale;

.field public static final enum f:Lcom/apprupt/sdk/CvLocale;

.field public static final enum g:Lcom/apprupt/sdk/CvLocale;

.field public static final enum h:Lcom/apprupt/sdk/CvLocale;

.field private static final synthetic i:[Lcom/apprupt/sdk/CvLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "BUTTON_OK"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->a:Lcom/apprupt/sdk/CvLocale;

    .line 8
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "BUTTON_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->b:Lcom/apprupt/sdk/CvLocale;

    .line 9
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "BUTTON_CALL"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->c:Lcom/apprupt/sdk/CvLocale;

    .line 10
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "PROGRESS_LOADING"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->d:Lcom/apprupt/sdk/CvLocale;

    .line 11
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "CALENDAR_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->e:Lcom/apprupt/sdk/CvLocale;

    .line 12
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "CALENDAR_NOENTRIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->f:Lcom/apprupt/sdk/CvLocale;

    .line 13
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "CALENDAR_DATA_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->g:Lcom/apprupt/sdk/CvLocale;

    .line 14
    new-instance v0, Lcom/apprupt/sdk/CvLocale;

    const-string v1, "CALENDAR_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->h:Lcom/apprupt/sdk/CvLocale;

    .line 5
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/apprupt/sdk/CvLocale;

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->a:Lcom/apprupt/sdk/CvLocale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->b:Lcom/apprupt/sdk/CvLocale;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->c:Lcom/apprupt/sdk/CvLocale;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->d:Lcom/apprupt/sdk/CvLocale;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->e:Lcom/apprupt/sdk/CvLocale;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/CvLocale;->f:Lcom/apprupt/sdk/CvLocale;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apprupt/sdk/CvLocale;->g:Lcom/apprupt/sdk/CvLocale;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/apprupt/sdk/CvLocale;->h:Lcom/apprupt/sdk/CvLocale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/CvLocale;->i:[Lcom/apprupt/sdk/CvLocale;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvLocale$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvLocale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvLocale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    const-string v0, "Loading..."

    goto :goto_0

    .line 21
    :pswitch_1
    const-string v0, "Events added to calendar."

    goto :goto_0

    .line 25
    :pswitch_2
    const-string v0, "Cannot load data from server."

    goto :goto_0

    .line 28
    :pswitch_3
    const-string v0, "Cannot add events to calendar."

    goto :goto_0

    .line 30
    :pswitch_4
    const-string v0, "OK"

    goto :goto_0

    .line 32
    :pswitch_5
    const-string v0, "Cancel"

    goto :goto_0

    .line 34
    :pswitch_6
    const-string v0, "Call"

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/apprupt/sdk/CvLocale$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvLocale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    :pswitch_0
    invoke-direct {p0}, Lcom/apprupt/sdk/CvLocale;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "L\u00e4dt..."

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "Termine wurden hinzugef\u00fcgt."

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "Daten k\u00f6nnen nicht geladen werden."

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "Termine k\u00f6nnen nicht hinzugef\u00fcgt werden."

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v0, "Anrufen"

    goto :goto_0

    .line 53
    :pswitch_6
    const-string v0, "Abbrechen"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvLocale;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/apprupt/sdk/CvLocale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvLocale;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvLocale;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/apprupt/sdk/CvLocale;->i:[Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvLocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvLocale;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 60
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/apprupt/sdk/CvLocale;->c()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/apprupt/sdk/CvLocale;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
