.class public final Lcom/revmob/ads/interstitial/a/a;
.super Lcom/revmob/ads/a/b;


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/a/b;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V

    iput-object p3, p0, Lcom/revmob/ads/interstitial/a/a;->d:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/a/b;
    .locals 77

    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "fullscreen"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v30 .. v30}, Lcom/revmob/ads/interstitial/a/a;->c(Lorg/json/JSONObject;)Z

    move-result v21

    const-string v4, "links"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/revmob/ads/interstitial/a/a;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v0

    invoke-static {v4}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v30 .. v30}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONObject;)Z

    move-result v9

    invoke-static {v4}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/revmob/ads/interstitial/a/a;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "html"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "dsp_url"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "dsp_html"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "image_portrait"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "image_landscape"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v5, "framePortrait"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v5, "frameLandscape"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v5, "preRoll"

    const-string v10, "landscape"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    const-string v5, "preRoll"

    const-string v10, "portrait"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    const-string v5, "preRoll"

    const-string v10, "message"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    const-string v5, "preRoll"

    const-string v10, "red"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    const-string v5, "preRoll"

    const-string v10, "green"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v53

    const-string v5, "preRoll"

    const-string v10, "blue"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    const-string v5, "preRoll"

    const-string v10, "alpha"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    const-string v5, "postRoll"

    const-string v10, "href"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    const-string v5, "postRoll"

    const-string v10, "message"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string v5, "preRoll"

    const-string v10, "red"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    const-string v5, "preRoll"

    const-string v10, "green"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v57

    const-string v5, "preRoll"

    const-string v10, "blue"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v58

    const-string v5, "preRoll"

    const-string v10, "alpha"

    invoke-static {v4, v5, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v59

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v46, 0x0

    const-string v5, "orientation"

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v60

    const-string v5, "orientationLock"

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    const-string v5, "image"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v5, "imageSize"

    invoke-static {v4, v5}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "videoSkipTime"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v24

    const-string v10, "timeLeftTime"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    const-string v10, "videoEnd"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v26

    const-string v10, "fullscreenPercentage"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/revmob/ads/interstitial/a/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v61

    const-string v10, "video"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v10, "replay_button"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    const-string v10, "revmob_logo"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string v10, "volume_mute"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "volume_up"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "sound"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    const-string v10, "sound_off"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    const-string v10, "close_button"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    const-string v10, "download_button"

    invoke-static {v4, v10}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    const/16 v37, 0x0

    const/16 v38, 0x0

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v63, v0

    const/4 v12, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    const-string v4, "clicks"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "errors"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "impressions"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v10, 0x0

    aput v10, v63, v4

    const/4 v4, 0x1

    const/4 v10, 0x0

    aput v10, v63, v4

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    const/4 v5, 0x0

    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v63, v5

    const/4 v5, 0x1

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v63, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v27, :cond_6

    const-string v4, "vast"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "vast"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v4, "trackingEvents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "trackingEvents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_2
    const-string v5, "clicks"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "clicks"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    :goto_3
    const-string v10, "impressions"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "impressions"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    :goto_4
    const-string v28, "errors"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    const-string v28, "errors"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    :goto_5
    if-eqz v4, :cond_2

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-static {v0, v1, v4}, Lcom/revmob/ads/interstitial/a/a;->a(Ljava/util/List;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    :cond_2
    if-eqz v5, :cond_3

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    :cond_4
    if-eqz v10, :cond_5

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    :cond_5
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v23, 0x0

    new-instance v18, Lcom/revmob/ads/a/f;

    invoke-direct/range {v18 .. v18}, Lcom/revmob/ads/a/f;-><init>()V

    new-instance v19, Lcom/revmob/ads/a/e;

    invoke-direct/range {v19 .. v19}, Lcom/revmob/ads/a/e;-><init>()V

    :try_start_1
    const-string v4, "animation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v4, "duration"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v74

    move-object/from16 v0, v18

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/a/d;->a(J)V

    move-object/from16 v0, v19

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/a/d;->a(J)V

    const-string v4, "show"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/revmob/ads/a/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v10, v63, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    aput v10, v63, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/revmob/ads/interstitial/a/a;->c:Lcom/revmob/internal/c;

    iget-object v5, v5, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v10, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/16 v16, 0x0

    const-string v28, "createData1"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v4, v5, v10, v0, v1}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_c
    :try_start_2
    const-string v4, "close"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_d

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/revmob/ads/a/d;->a(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const-string v4, "parallax_delta"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v23

    :goto_8
    const/4 v4, 0x0

    :try_start_3
    const-string v5, "sound"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "sound"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "on_show"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v10, "on_show"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    :cond_e
    :try_start_4
    const-string v10, "on_click"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "on_click"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_f
    move-object/from16 v22, v4

    :goto_9
    new-instance v4, Lcom/revmob/internal/c;

    invoke-direct {v4}, Lcom/revmob/internal/c;-><init>()V

    const/16 v28, 0x0

    const/16 v16, 0x0

    if-nez v13, :cond_10

    if-eqz v14, :cond_15

    :cond_10
    if-eqz v32, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    :goto_a
    if-eqz v36, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v36

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    move v4, v12

    move-object/from16 v17, v16

    move/from16 v63, v15

    move-object/from16 v12, v28

    move-object/from16 v15, v16

    :goto_b
    if-eqz v71, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/revmob/ads/a/g;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    if-eqz v64, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v28

    :goto_c
    if-eqz v69, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v31

    :goto_d
    if-eqz v70, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v32

    :goto_e
    if-eqz v72, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v64

    :goto_f
    :try_start_5
    const-string v5, "rewarded"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_10
    if-eqz v68, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    :goto_11
    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v30

    if-eqz v65, :cond_12

    if-eqz v66, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    if-eqz v39, :cond_12

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v42, v0

    :cond_12
    if-eqz v67, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v41

    if-eqz v41, :cond_13

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v48, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v46, v0

    :cond_13
    :goto_12
    if-eqz v4, :cond_14

    const/16 v35, 0x0

    const/16 v36, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    if-eqz v4, :cond_23

    new-instance v5, Lcom/revmob/ads/interstitial/a/b;

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v64}, Lcom/revmob/ads/interstitial/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/revmob/RevMobAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/revmob/ads/a/d;Lcom/revmob/ads/a/d;Ljava/lang/String;ZLjava/lang/String;IDILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DDDDLjava/lang/String;Ljava/lang/String;IIIIIIIIIDILandroid/graphics/Bitmap;)V

    :goto_13
    return-object v5

    :cond_15
    if-nez v11, :cond_1b

    if-eqz v17, :cond_19

    if-eqz v29, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v17, :cond_2b

    if-eqz v29, :cond_2b

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, v37

    if-eq v5, v0, :cond_16

    move/from16 v0, v38

    if-ne v0, v4, :cond_2a

    :cond_16
    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_17

    const/4 v4, 0x2

    move/from16 v0, v31

    if-eq v0, v4, :cond_2a

    :cond_17
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_2a

    :cond_18
    const/4 v5, 0x1

    const/4 v4, 0x1

    move-object/from16 v10, v17

    :goto_14
    const/4 v12, 0x0

    aget v12, v63, v12

    if-eqz v12, :cond_29

    const/4 v12, 0x1

    aget v12, v63, v12

    if-eqz v12, :cond_29

    if-eqz v37, :cond_28

    const/4 v12, 0x0

    aget v12, v63, v12

    move/from16 v0, v37

    if-eq v0, v12, :cond_28

    const/4 v12, 0x1

    aget v12, v63, v12

    move/from16 v0, v37

    if-eq v0, v12, :cond_28

    const/4 v12, 0x0

    aget v12, v63, v12

    rem-int v12, v37, v12

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    aget v12, v63, v12

    rem-int v12, v37, v12

    if-eqz v12, :cond_28

    const/4 v12, 0x0

    aget v12, v63, v12

    rem-int v12, v12, v37

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    aget v12, v63, v12

    rem-int v12, v12, v37

    if-eqz v12, :cond_28

    const/4 v4, 0x1

    move v12, v4

    :goto_15
    if-eqz v38, :cond_27

    const/4 v4, 0x0

    aget v4, v63, v4

    move/from16 v0, v38

    if-eq v0, v4, :cond_27

    const/4 v4, 0x1

    aget v4, v63, v4

    move/from16 v0, v38

    if-eq v0, v4, :cond_27

    const/4 v4, 0x0

    aget v4, v63, v4

    rem-int v4, v38, v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    aget v4, v63, v4

    rem-int v4, v38, v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    aget v4, v63, v4

    rem-int v4, v4, v38

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    aget v4, v63, v4

    rem-int v4, v4, v38

    if-eqz v4, :cond_27

    const/4 v12, 0x1

    move v15, v5

    move-object v4, v10

    :goto_16
    if-nez v12, :cond_26

    if-eqz v32, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    :goto_17
    if-eqz v36, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    move-object/from16 v36, v16

    move/from16 v63, v15

    move-object/from16 v16, v29

    move-object v15, v4

    move v4, v12

    move-object/from16 v12, v28

    goto/16 :goto_b

    :cond_19
    if-eqz v35, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/revmob/ads/interstitial/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move-object/from16 v36, v16

    move-object/from16 v35, v16

    move-object/from16 v17, v16

    move/from16 v63, v15

    move-object v15, v4

    move v4, v12

    move-object/from16 v12, v28

    goto/16 :goto_b

    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v36, v16

    move-object/from16 v35, v16

    move-object/from16 v17, v16

    move/from16 v63, v15

    move-object v15, v4

    move v4, v12

    move-object/from16 v12, v28

    goto/16 :goto_b

    :cond_1b
    invoke-virtual {v4, v11}, Lcom/revmob/internal/c;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lcom/revmob/internal/c;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    :goto_18
    move-object/from16 v36, v16

    move-object/from16 v35, v16

    move-object/from16 v17, v16

    move/from16 v63, v15

    move-object/from16 v15, v16

    move/from16 v76, v12

    move-object v12, v4

    move/from16 v4, v76

    goto/16 :goto_b

    :cond_1c
    const/4 v4, 0x0

    goto :goto_18

    :cond_1d
    const/16 v28, 0x0

    goto/16 :goto_c

    :cond_1e
    const/16 v31, 0x0

    goto/16 :goto_d

    :cond_1f
    const/16 v32, 0x0

    goto/16 :goto_e

    :cond_20
    const/16 v64, 0x0

    goto/16 :goto_f

    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_11

    :cond_22
    const/16 v30, 0x0

    goto/16 :goto_12

    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_13

    :catch_1
    move-exception v5

    goto/16 :goto_10

    :catch_2
    move-exception v5

    move-object/from16 v22, v4

    goto/16 :goto_9

    :catch_3
    move-exception v5

    move-object/from16 v22, v4

    goto/16 :goto_9

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :cond_24
    move-object/from16 v36, v16

    move/from16 v63, v15

    move-object/from16 v16, v29

    move-object v15, v4

    move v4, v12

    move-object/from16 v12, v28

    goto/16 :goto_b

    :cond_25
    move-object/from16 v35, v16

    goto/16 :goto_17

    :cond_26
    move-object/from16 v36, v16

    move-object/from16 v35, v16

    move/from16 v63, v15

    move-object/from16 v16, v29

    move-object v15, v4

    move v4, v12

    move-object/from16 v12, v28

    goto/16 :goto_b

    :cond_27
    move v15, v5

    move-object v4, v10

    goto/16 :goto_16

    :cond_28
    move v12, v4

    goto/16 :goto_15

    :cond_29
    move v12, v4

    move v15, v5

    move-object v4, v10

    goto/16 :goto_16

    :cond_2a
    move v4, v12

    move v5, v15

    move-object/from16 v10, v16

    goto/16 :goto_14

    :cond_2b
    move-object/from16 v4, v16

    goto/16 :goto_16

    :cond_2c
    move v4, v12

    move-object/from16 v36, v16

    move-object/from16 v17, v16

    move/from16 v63, v15

    move-object/from16 v12, v28

    move-object/from16 v15, v16

    goto/16 :goto_b

    :cond_2d
    move-object/from16 v35, v16

    goto/16 :goto_a
.end method

.method private static a(Ljava/util/List;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    const/16 v0, 0xd

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const-string v0, "midpoint"

    goto :goto_1

    :pswitch_1
    const-string v0, "thirdQuartile"

    goto :goto_1

    :pswitch_2
    const-string v0, "complete"

    goto :goto_1

    :pswitch_3
    const-string v0, "creativeView"

    goto :goto_1

    :pswitch_4
    const-string v0, "start"

    goto :goto_1

    :pswitch_5
    const-string v0, "firstQuartile"

    goto :goto_1

    :pswitch_6
    const-string v0, "mute"

    goto :goto_1

    :pswitch_7
    const-string v0, "unmute"

    goto :goto_1

    :pswitch_8
    const-string v0, "close"

    goto :goto_1

    :pswitch_9
    const-string v0, "pause"

    goto :goto_1

    :pswitch_a
    const-string v0, "resume"

    goto :goto_1

    :pswitch_b
    const-string v0, "fullscreenPortraitView"

    goto :goto_1

    :pswitch_c
    const-string v0, "fullscreenLandscapeView"

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0, v3}, Lcom/revmob/ads/interstitial/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Lcom/revmob/a/a;

    invoke-direct {v0}, Lcom/revmob/a/a;-><init>()V

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    :try_start_2
    invoke-static {p1}, Lcom/revmob/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v3, v0

    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/revmob/ads/interstitial/a/a;->e:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/revmob/ads/interstitial/a/a;->c:Lcom/revmob/internal/c;

    iget-object v3, v3, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v4, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "downloadFile2"

    invoke-static {v1, v3, v4, v2, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catch_1
    move-exception v3

    :try_start_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/revmob/ads/interstitial/a/a;->c:Lcom/revmob/internal/c;

    iget-object v5, v5, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v6, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/4 v7, 0x0

    const-string v8, "downloadFile1"

    invoke-static {v3, v5, v6, v7, v8}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v0

    goto :goto_0

    :cond_2
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a/a;->a:Lcom/revmob/RevMobAdsListener;

    invoke-direct {p0, p1, v2}, Lcom/revmob/ads/interstitial/a/a;->a(Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/a/b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/revmob/ads/interstitial/a/a;->c:Lcom/revmob/internal/c;

    iget-object v3, v3, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/revmob/ads/interstitial/a/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/revmob/ads/interstitial/a/a;->c:Lcom/revmob/internal/c;

    iget-object v3, v3, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    iget-object v3, v2, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v0, v4, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v3, v0, v1}, Lcom/revmob/a/e;->a(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/a;->b:Lcom/revmob/ads/a/a;

    invoke-interface {v0, v2}, Lcom/revmob/ads/a/a;->updateWithData(Lcom/revmob/client/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/a;->a:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/a;->a:Lcom/revmob/RevMobAdsListener;

    const-string v1, "An error occurred during the ad download."

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a/a;->f:Z

    return v0
.end method
