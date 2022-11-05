.class public Lcom/adcolony/sdk/AdColonyUserMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final USER_EDUCATION_ASSOCIATES_DEGREE:Ljava/lang/String; = "associates_degree"

.field public static final USER_EDUCATION_BACHELORS_DEGREE:Ljava/lang/String; = "bachelors_degree"

.field public static final USER_EDUCATION_GRADE_SCHOOL:Ljava/lang/String; = "grade_school"

.field public static final USER_EDUCATION_GRADUATE_DEGREE:Ljava/lang/String; = "graduate_degree"

.field public static final USER_EDUCATION_HIGH_SCHOOL_DIPLOMA:Ljava/lang/String; = "high_school_diploma"

.field public static final USER_EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "some_college"

.field public static final USER_EDUCATION_SOME_HIGH_SCHOOL:Ljava/lang/String; = "some_high_school"

.field public static final USER_FEMALE:Ljava/lang/String; = "female"

.field public static final USER_MALE:Ljava/lang/String; = "male"

.field public static final USER_MARRIED:Ljava/lang/String; = "married"

.field public static final USER_SINGLE:Ljava/lang/String; = "single"

.field static final a:I = 0x80


# instance fields
.field b:Lorg/json/JSONArray;

.field c:Lorg/json/JSONObject;

.field d:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    .line 33
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public addUserInterest(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 3

    .prologue
    .line 225
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "interests"

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 231
    :cond_0
    return-object p0
.end method

.method public clearUserInterests()Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    .line 242
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "interests"

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 243
    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "age"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserAnnualHouseholdIncome()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "household_income"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserEducation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "education"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInterests()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONArray;

    invoke-static {v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    return-object v1
.end method

.method public getUserLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->d:Landroid/location/Location;

    return-object v0
.end method

.method public getUserMaritalStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "marital_status"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserZipCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    const-string v1, "zip"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 2

    .prologue
    .line 295
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 299
    :cond_0
    return-object p0
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 311
    invoke-static {p2}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    :cond_0
    return-object p0
.end method

.method public setMetadata(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 269
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 273
    :cond_0
    return-object p0
.end method

.method public setUserAge(I)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 4

    .prologue
    .line 74
    const-string v0, "age"

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 75
    return-object p0
.end method

.method public setUserAnnualHouseholdIncome(I)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 4

    .prologue
    .line 123
    const-string v0, "household_income"

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 124
    return-object p0
.end method

.method public setUserEducation(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "education"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 149
    :cond_0
    return-object p0
.end method

.method public setUserGender(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 48
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "gender"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 52
    :cond_0
    return-object p0
.end method

.method public setUserLocation(Landroid/location/Location;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 4

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyUserMetadata;->d:Landroid/location/Location;

    .line 197
    const-string v0, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 198
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 199
    const-string v0, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 200
    const-string v0, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 201
    const-string v0, "time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 202
    const-string v0, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 204
    return-object p0
.end method

.method public setUserMaritalStatus(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "marital_status"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 101
    :cond_0
    return-object p0
.end method

.method public setUserZipCode(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 171
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "zip"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 175
    :cond_0
    return-object p0
.end method
