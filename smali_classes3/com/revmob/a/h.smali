.class public final Lcom/revmob/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/revmob/RevMobUserGender;

.field private static c:I

.field private static d:I

.field private static e:Ljava/util/Calendar;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/revmob/RevMobUserGender;->UNDEFINED:Lcom/revmob/RevMobUserGender;

    sput-object v0, Lcom/revmob/a/h;->b:Lcom/revmob/RevMobUserGender;

    sput v2, Lcom/revmob/a/h;->c:I

    sput v2, Lcom/revmob/a/h;->d:I

    sput-object v1, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    sput-object v1, Lcom/revmob/a/h;->f:Ljava/lang/String;

    sput-object v1, Lcom/revmob/a/h;->g:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/revmob/RevMobUserGender;
    .locals 1

    sget-object v0, Lcom/revmob/a/h;->b:Lcom/revmob/RevMobUserGender;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const/16 v4, 0xd

    const/4 v3, -0x1

    sget v0, Lcom/revmob/a/h;->c:I

    if-eq v0, v3, :cond_0

    const-string v0, "age_range_min"

    sget v1, Lcom/revmob/a/h;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget v0, Lcom/revmob/a/h;->d:I

    if-eq v0, v3, :cond_1

    const-string v0, "age_range_max"

    sget v1, Lcom/revmob/a/h;->d:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget v0, Lcom/revmob/a/h;->c:I

    if-lez v0, :cond_3

    sget v0, Lcom/revmob/a/h;->d:I

    if-ge v0, v4, :cond_3

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    sget-object v0, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "birthday"

    sget-object v2, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    sget-object v2, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_4
    sget-object v0, Lcom/revmob/a/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "email"

    sget-object v1, Lcom/revmob/a/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    sget-object v0, Lcom/revmob/a/h;->b:Lcom/revmob/RevMobUserGender;

    if-eqz v0, :cond_6

    const-string v0, "gender"

    sget-object v1, Lcom/revmob/a/h;->b:Lcom/revmob/RevMobUserGender;

    invoke-virtual {v1}, Lcom/revmob/RevMobUserGender;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    sget-object v0, Lcom/revmob/a/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "user_page"

    sget-object v1, Lcom/revmob/a/h;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    sget-object v0, Lcom/revmob/a/h;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/revmob/a/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/revmob/a/h;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    sget-object v2, Lcom/revmob/a/h;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const-string v0, "interests"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/revmob/a/h;->c:I

    return-void
.end method

.method public static a(Lcom/revmob/RevMobUserGender;)V
    .locals 0

    sput-object p0, Lcom/revmob/a/h;->b:Lcom/revmob/RevMobUserGender;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/revmob/a/h;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Calendar;)V
    .locals 0

    sput-object p0, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/revmob/a/h;->g:Ljava/util/List;

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/revmob/a/h;->c:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/revmob/a/h;->d:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/revmob/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/revmob/a/h;->d:I

    return v0
.end method

.method public static d()Ljava/util/Calendar;
    .locals 1

    sget-object v0, Lcom/revmob/a/h;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/revmob/a/h;->g:Ljava/util/List;

    return-object v0
.end method
