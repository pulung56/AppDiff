.class public Lcom/weathernews/sunnycomb/mood/MoodActivity;
.super Lcom/weathernews/sunnycomb/SunnycombActivityBase;
.source "MoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weathernews/sunnycomb/mood/MoodActivity$sampleCircle;
    }
.end annotation


# instance fields
.field private akey:Ljava/lang/String;

.field private app:Lcom/weathernews/sunnycomb/Sunnycomb;

.field private example:Landroid/widget/TextView;

.field private feel_week_icon:Landroid/widget/ImageView;

.field private feel_week_text:Landroid/widget/TextView;

.field private fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

.field private for_rank2:Landroid/widget/FrameLayout;

.field private loading_view:Lcom/weathernews/sunnycomb/view/HexLoadingView;

.field private mLocClient:Lcom/baidu/location/LocationClient;

.field private moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

.field private moodDataLoader:Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

.field private moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

.field private mood_forecast:Landroid/widget/LinearLayout;

.field private mood_sample:Landroid/widget/RelativeLayout;

.field private mood_sample_explain:Landroid/widget/TextView;

.field private mood_today_area:Landroid/widget/FrameLayout;

.field private mood_week_area:Landroid/widget/LinearLayout;

.field private mood_week_icon:Landroid/widget/ImageView;

.field private once:Z

.field private profMngr:Lcom/weathernews/sunnycomb/common/ProfileManager;

.field private res:Landroid/content/res/Resources;

.field private sample_bg:Landroid/widget/FrameLayout;

.field private sample_day:Landroid/widget/TextView;

.field private sample_feeling:Landroid/widget/TextView;

.field private sample_mood:Landroid/widget/TextView;

.field private showLoading:Z

.field private star:[Landroid/widget/TextView;

.field private star_1:Landroid/widget/TextView;

.field private star_2:Landroid/widget/TextView;

.field private star_3:Landroid/widget/TextView;

.field private star_4:Landroid/widget/TextView;

.field private star_5:Landroid/widget/TextView;

.field private star_6:Landroid/widget/TextView;

.field private star_7:Landroid/widget/TextView;

.field private star_area:Landroid/widget/FrameLayout;

.field private submitcount:Landroid/widget/TextView;

.field private submitday:Landroid/widget/TextView;

.field private times_hex:Landroid/widget/FrameLayout;

.field private today:Landroid/widget/TextView;

.field private today_adj:Landroid/widget/TextView;

.field private today_feel:Landroid/widget/TextView;

.field private today_feel_icon:Landroid/widget/ImageView;

.field private today_fusen:Landroid/widget/FrameLayout;

.field private today_is:Landroid/widget/TextView;

.field private today_mood_icon:Landroid/widget/ImageView;

.field private utilCalendar:Lcom/weathernews/libwniutil/UtilCalendar;

.field private week_fusen:Landroid/widget/FrameLayout;

.field private week_slide_dist:I

.field private worldAdj:[Landroid/widget/TextView;

.field private world_adj_1:Landroid/widget/TextView;

.field private world_adj_2:Landroid/widget/TextView;

.field private world_adj_3:Landroid/widget/TextView;

.field private world_adj_4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;-><init>()V

    .line 105
    invoke-static {}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getInstance()Lcom/weathernews/sunnycomb/common/SCFontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    .line 106
    iput-boolean v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->once:Z

    .line 107
    iput-boolean v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->showLoading:Z

    .line 57
    return-void
.end method

.method private StartLoad()V
    .registers 5

    .prologue
    .line 812
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodDataLoader:Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->app:Lcom/weathernews/sunnycomb/Sunnycomb;

    invoke-virtual {v2}, Lcom/weathernews/sunnycomb/Sunnycomb;->getStrLat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->app:Lcom/weathernews/sunnycomb/Sunnycomb;

    invoke-virtual {v3}, Lcom/weathernews/sunnycomb/Sunnycomb;->getStrLon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/weathernews/sunnycomb/loader/MoodDataLoader;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodDataLoader:Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

    new-instance v1, Lcom/weathernews/sunnycomb/mood/MoodActivity$21;

    invoke-direct {v1, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$21;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/weathernews/sunnycomb/loader/MoodDataLoader;->start(Landroid/content/Context;Lcom/weathernews/sunnycomb/loader/OnDataLoaderListener;)V

    .line 843
    return-void
.end method

.method static synthetic access$0(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_bg:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setActivityAnimSlideStart()V

    return-void
.end method

.method static synthetic access$10(Lcom/weathernews/sunnycomb/mood/MoodActivity;Landroid/view/View;Lcom/weathernews/libwnianim/ModAnimListener;)V
    .registers 3

    .prologue
    .line 527
    invoke-direct {p0, p1, p2}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->bound(Landroid/view/View;Lcom/weathernews/libwnianim/ModAnimListener;)V

    return-void
.end method

.method static synthetic access$11(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->for_rank2:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_mood_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/weathernews/sunnycomb/mood/MoodActivity;Z)V
    .registers 2

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setMoodWeek(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->showLoading:Z

    return v0
.end method

.method static synthetic access$18(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Lcom/weathernews/sunnycomb/view/HexLoadingView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->loading_view:Lcom/weathernews/sunnycomb/view/HexLoadingView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V
    .registers 1

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->showAlert()V

    return-void
.end method

.method static synthetic access$2(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Lcom/weathernews/sunnycomb/mood/MoodEffect;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    return-object v0
.end method

.method static synthetic access$20(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Lcom/weathernews/sunnycomb/loader/MoodDataLoader;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodDataLoader:Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

    return-object v0
.end method

.method static synthetic access$21(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/sunnycomb/loader/data/MoodData;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    return-void
.end method

.method static synthetic access$22(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/weathernews/sunnycomb/mood/MoodActivity;Z)V
    .registers 2

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setSample(Z)V

    return-void
.end method

.method static synthetic access$25(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setMoodToday()V

    return-void
.end method

.method static synthetic access$3(Lcom/weathernews/sunnycomb/mood/MoodActivity;)[Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_is:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Lcom/weathernews/sunnycomb/loader/data/MoodData;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/weathernews/sunnycomb/mood/MoodActivity;I)V
    .registers 2

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feelAnim(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/weathernews/sunnycomb/mood/MoodActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private bound(Landroid/view/View;Lcom/weathernews/libwnianim/ModAnimListener;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # Lcom/weathernews/libwnianim/ModAnimListener;

    .prologue
    const/4 v1, 0x0

    .line 528
    new-instance v0, Lcom/weathernews/libwnianim/ModTranslateAnim;

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    new-instance v7, Lcom/weathernews/sunnycomb/mood/MoodActivity$8;

    invoke-direct {v7, p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity$8;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Landroid/view/View;)V

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 563
    return-void
.end method

.method private feelAnim(I)V
    .registers 2
    .param p1, "rank"    # I

    .prologue
    .line 724
    packed-switch p1, :pswitch_data_18

    .line 736
    :goto_3
    return-void

    .line 725
    :pswitch_4
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->rank1()V

    goto :goto_3

    .line 727
    :pswitch_8
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->rank2()V

    goto :goto_3

    .line 729
    :pswitch_c
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->rank3()V

    goto :goto_3

    .line 731
    :pswitch_10
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->rank4()V

    goto :goto_3

    .line 733
    :pswitch_14
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->rank5()V

    goto :goto_3

    .line 724
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method private find()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x4

    .line 292
    const v1, 0x7f09010f

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    .line 295
    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    .line 296
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v2}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_is:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_is:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v2}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->for_rank2:Landroid/widget/FrameLayout;

    .line 302
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->for_rank2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090125

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel:Landroid/widget/TextView;

    .line 305
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v2}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    .line 308
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_mood_icon:Landroid/widget/ImageView;

    .line 309
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    .line 310
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v2}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f090121

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_fusen:Landroid/widget/FrameLayout;

    .line 314
    new-array v1, v7, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->world_adj_1:Landroid/widget/TextView;

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->world_adj_2:Landroid/widget/TextView;

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->world_adj_3:Landroid/widget/TextView;

    aput-object v2, v1, v11

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->world_adj_4:Landroid/widget/TextView;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cb
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_143

    .line 320
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_1:Landroid/widget/TextView;

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_2:Landroid/widget/TextView;

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_3:Landroid/widget/TextView;

    aput-object v2, v1, v11

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_4:Landroid/widget/TextView;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_5:Landroid/widget/TextView;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_6:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_7:Landroid/widget/TextView;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star:[Landroid/widget/TextView;

    .line 321
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_area:Landroid/widget/FrameLayout;

    .line 322
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_area:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    const/4 v0, 0x0

    :goto_107
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_177

    .line 328
    const v1, 0x7f090111

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_week_area:Landroid/widget/LinearLayout;

    .line 331
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    .line 332
    const v1, 0x7f090114

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->times_hex:Landroid/widget/FrameLayout;

    .line 335
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/weathernews/sunnycomb/view/HexLoadingView;

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->loading_view:Lcom/weathernews/sunnycomb/view/HexLoadingView;

    .line 340
    return-void

    .line 316
    :cond_143
    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "world_adj_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 317
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_cb

    .line 324
    :cond_177
    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "star_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_107
.end method

.method private getMoodColor(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 852
    const/16 v0, -0x3e7

    .line 853
    .local v0, "color":I
    packed-switch p1, :pswitch_data_20

    .line 872
    :goto_5
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 855
    :pswitch_c
    const v0, 0x7f080023

    .line 856
    goto :goto_5

    .line 858
    :pswitch_10
    const v0, 0x7f080024

    .line 859
    goto :goto_5

    .line 861
    :pswitch_14
    const v0, 0x7f080025

    .line 862
    goto :goto_5

    .line 864
    :pswitch_18
    const v0, 0x7f080026

    .line 865
    goto :goto_5

    .line 867
    :pswitch_1c
    const v0, 0x7f080027

    .line 868
    goto :goto_5

    .line 853
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method private getParam()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->week_slide_dist:I

    .line 222
    return-void
.end method

.method private getParams(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    const-string v0, "push"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->isFromPush:Z

    .line 151
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getUtilProfParam()V

    .line 152
    sget-object v0, Lcom/weathernews/sunnycomb/common/LogCountTag$CountTag;->MOOD:Lcom/weathernews/sunnycomb/common/LogCountTag$CountTag;

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->countLog(Lcom/weathernews/sunnycomb/common/LogCountTag$CountTag;)V

    .line 153
    return-void
.end method

.method private getUtilProfParam()V
    .registers 3

    .prologue
    .line 235
    new-instance v0, Lcom/weathernews/sunnycomb/util/UtilProf;

    invoke-direct {v0, p0}, Lcom/weathernews/sunnycomb/util/UtilProf;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "utilProf":Lcom/weathernews/sunnycomb/util/UtilProf;
    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/util/UtilProf;->getAkey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    .line 237
    return-void
.end method

.method private getWeekText(Lcom/weathernews/sunnycomb/mood/MoodInfo;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "moodInfo"    # Lcom/weathernews/sunnycomb/mood/MoodInfo;

    .prologue
    .line 467
    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->utilCalendar:Lcom/weathernews/libwniutil/UtilCalendar;

    invoke-virtual {p1}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getTm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/weathernews/libwniutil/UtilCalendar;->setTime(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->utilCalendar:Lcom/weathernews/libwniutil/UtilCalendar;

    invoke-virtual {v4}, Lcom/weathernews/libwniutil/UtilCalendar;->getDayOfWeek()I

    move-result v0

    .line 469
    .local v0, "dayOfweek":I
    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "weekdays":[Ljava/lang/String;
    const-string v4, "<B>%s</B> %s %s , %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeeltext()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getMoodtext()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "weektext":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 472
    .local v1, "source":Ljava/lang/CharSequence;
    return-object v1
.end method

.method private initNaviBar()V
    .registers 3

    .prologue
    .line 265
    sget-object v0, Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;->BACK:Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;

    new-instance v1, Lcom/weathernews/sunnycomb/mood/MoodActivity$1;

    invoke-direct {v1, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$1;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setNavigationBarLeftButton(Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 273
    sget-object v0, Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;->PERSONALITY_SETTING:Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;

    new-instance v1, Lcom/weathernews/sunnycomb/mood/MoodActivity$2;

    invoke-direct {v1, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$2;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setNavigationBarRightButton(Lcom/weathernews/sunnycomb/view/NavigationBarView$IconType;Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_22
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setNavigationBarTitle(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private moodAnim(I)V
    .registers 7
    .param p1, "offset"    # I

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x1

    .line 743
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_mood_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    new-instance v2, Lcom/weathernews/sunnycomb/mood/MoodActivity$18;

    invoke-direct {v2, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$18;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v1, p1, v4, v3, v2}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeIn(IIZLcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 750
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    new-instance v2, Lcom/weathernews/sunnycomb/mood/MoodActivity$19;

    invoke-direct {v2, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$19;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v1, p1, v4, v3, v2}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeIn(IIZLcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 756
    return-void
.end method

.method private rank1()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 611
    .local v9, "half_feel_view":I
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    .line 612
    .local v10, "half_today_area":I
    add-int v12, v9, v10

    .line 613
    .local v12, "start_x":I
    sub-int v11, v12, v9

    .line 614
    .local v11, "middle_x":I
    const/16 v0, 0x125c

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodAnim(I)V

    .line 615
    iget-object v13, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/weathernews/libwnianim/ModTranslateAnim;

    int-to-float v1, v12

    int-to-float v2, v11

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    new-instance v8, Lcom/weathernews/sunnycomb/mood/MoodActivity$11;

    invoke-direct {v8, p0, v11, v12}, Lcom/weathernews/sunnycomb/mood/MoodActivity$11;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;II)V

    move v4, v3

    invoke-direct/range {v0 .. v8}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIIZLcom/weathernews/libwnianim/ModAnimListener;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 631
    return-void
.end method

.method private rank2()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->for_rank2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 591
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodAnim(I)V

    .line 592
    iget-object v9, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/weathernews/libwnianim/ModTranslateAnim;

    const/high16 v3, 0x43af0000    # 350.0f

    const/high16 v4, 0x43020000    # 130.0f

    const/16 v6, 0x5dc

    const/4 v7, 0x1

    new-instance v8, Lcom/weathernews/sunnycomb/mood/MoodActivity$10;

    invoke-direct {v8, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$10;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIIZLcom/weathernews/libwnianim/ModAnimListener;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 603
    return-void
.end method

.method private rank3()V
    .registers 8

    .prologue
    .line 570
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 571
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodAnim(I)V

    .line 572
    iget-object v6, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/weathernews/libwnianim/ModScaleAnim;

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    new-instance v5, Lcom/weathernews/sunnycomb/mood/MoodActivity$9;

    invoke-direct {v5, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$9;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-direct/range {v0 .. v5}, Lcom/weathernews/libwnianim/ModScaleAnim;-><init>(FFIILcom/weathernews/libwnianim/ModAnimListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 583
    return-void
.end method

.method private rank4()V
    .registers 23

    .prologue
    .line 638
    const/16 v9, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodAnim(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v20, v9, 0x2

    .line 641
    .local v20, "startX":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_today_area:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v21, v9, 0x2

    .line 642
    .local v21, "startY":I
    const/16 v19, 0x0

    .line 644
    .local v19, "isFin":Z
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 645
    .local v2, "scale2":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v9, 0x64

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 646
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 649
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    int-to-float v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 650
    .local v3, "scale1":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v9, 0x64

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 651
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 653
    new-instance v4, Lcom/weathernews/libwnianim/ModTranslateAnim;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x46

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 654
    .local v4, "trans_scale2":Lcom/weathernews/libwnianim/ModTranslateAnim;
    new-instance v5, Lcom/weathernews/libwnianim/ModTranslateAnim;

    div-int/lit8 v9, v20, 0x2

    int-to-float v6, v9

    div-int/lit8 v9, v20, 0x2

    int-to-float v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x46

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 657
    .local v5, "trans_scale1":Lcom/weathernews/libwnianim/ModTranslateAnim;
    new-instance v18, Lcom/weathernews/libwnianim/ModAnimSet;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    new-instance v12, Lcom/weathernews/sunnycomb/mood/MoodActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$12;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/weathernews/libwnianim/ModAnimSet;-><init>(ZIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 663
    .local v18, "animSet3":Lcom/weathernews/libwnianim/ModAnimSet;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 664
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 667
    new-instance v6, Lcom/weathernews/libwnianim/ModTranslateAnim;

    div-int/lit8 v9, v20, 0x4

    int-to-float v7, v9

    const/4 v8, 0x0

    div-int/lit8 v9, v21, 0x2

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc8

    new-instance v13, Lcom/weathernews/sunnycomb/mood/MoodActivity$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity$13;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/libwnianim/ModAnimSet;)V

    invoke-direct/range {v6 .. v13}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 675
    .local v6, "trans3":Lcom/weathernews/libwnianim/ModTranslateAnim;
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v10}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v9}, Lcom/weathernews/libwnianim/ModTranslateAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 677
    new-instance v7, Lcom/weathernews/libwnianim/ModTranslateAnim;

    div-int/lit8 v9, v20, 0x2

    int-to-float v8, v9

    div-int/lit8 v9, v20, 0x4

    int-to-float v9, v9

    const/4 v10, 0x0

    div-int/lit8 v11, v21, 0x2

    int-to-float v11, v11

    const/4 v12, 0x0

    const/16 v13, 0xc8

    new-instance v14, Lcom/weathernews/sunnycomb/mood/MoodActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/weathernews/sunnycomb/mood/MoodActivity$14;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/libwnianim/ModTranslateAnim;)V

    invoke-direct/range {v7 .. v14}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 683
    .local v7, "trans2":Lcom/weathernews/libwnianim/ModTranslateAnim;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v9}, Lcom/weathernews/libwnianim/ModTranslateAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 685
    new-instance v17, Lcom/weathernews/libwnianim/ModAnimSet;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    new-instance v12, Lcom/weathernews/sunnycomb/mood/MoodActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7}, Lcom/weathernews/sunnycomb/mood/MoodActivity$15;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/libwnianim/ModTranslateAnim;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/weathernews/libwnianim/ModAnimSet;-><init>(ZIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 692
    .local v17, "animSet2":Lcom/weathernews/libwnianim/ModAnimSet;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 693
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 694
    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/weathernews/libwnianim/ModAnimSet;->setFillAfter(Z)V

    .line 697
    new-instance v16, Lcom/weathernews/libwnianim/ModAnimSet;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    new-instance v12, Lcom/weathernews/sunnycomb/mood/MoodActivity$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity$16;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/libwnianim/ModAnimSet;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/weathernews/libwnianim/ModAnimSet;-><init>(ZIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 703
    .local v16, "animSet":Lcom/weathernews/libwnianim/ModAnimSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 704
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/weathernews/libwnianim/ModAnimSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 705
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/weathernews/libwnianim/ModAnimSet;->setFillAfter(Z)V

    .line 707
    new-instance v8, Lcom/weathernews/libwnianim/ModTranslateAnim;

    move/from16 v0, v20

    int-to-float v9, v0

    div-int/lit8 v10, v20, 0x2

    int-to-float v10, v10

    move/from16 v0, v21

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1f4

    new-instance v15, Lcom/weathernews/sunnycomb/mood/MoodActivity$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity$17;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Lcom/weathernews/libwnianim/ModAnimSet;)V

    invoke-direct/range {v8 .. v15}, Lcom/weathernews/libwnianim/ModTranslateAnim;-><init>(FFFFIILcom/weathernews/libwnianim/ModAnimListener;)V

    .line 713
    .local v8, "trans1":Lcom/weathernews/libwnianim/ModTranslateAnim;
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v10}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v9}, Lcom/weathernews/libwnianim/ModTranslateAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 714
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/weathernews/libwnianim/ModTranslateAnim;->setFillAfter(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 717
    return-void
.end method

.method private rank5()V
    .registers 8

    .prologue
    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    .line 508
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star_area:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 509
    const/16 v1, 0x7d0

    invoke-direct {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodAnim(I)V

    .line 511
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    const/16 v3, 0x12c

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    new-instance v6, Lcom/weathernews/sunnycomb/mood/MoodActivity$7;

    invoke-direct {v6, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$7;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeIn(IIZLcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    return-void

    .line 506
    :cond_27
    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->star:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setShine(Landroid/view/View;)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeWeek()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_week_area:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 417
    return-void
.end method

.method private setAnim()V
    .registers 7

    .prologue
    .line 480
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x1

    new-instance v5, Lcom/weathernews/sunnycomb/mood/MoodActivity$6;

    invoke-direct {v5, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$6;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeIn(IIZLcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    return-void
.end method

.method private setInvisible()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 226
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_is:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_mood_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    return-void
.end method

.method private setMoodToday()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 346
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    invoke-virtual {v5}, Lcom/weathernews/sunnycomb/loader/data/MoodData;->getMoodInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weathernews/sunnycomb/mood/MoodInfo;

    .line 347
    .local v0, "TodayMood":Lcom/weathernews/sunnycomb/mood/MoodInfo;
    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeelface()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getMoodColor(I)I

    move-result v3

    .line 349
    .local v3, "moodcolor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v2, v5, :cond_8c

    .line 354
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_fusen:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 356
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeeltext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_adj:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getMoodtext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "feeling_l_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeelface()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "feelicon":I
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mood_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getMoodIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 364
    .local v4, "moodicon":I
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_mood_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 367
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->today_feel_icon:Landroid/widget/ImageView;

    new-instance v6, Lcom/weathernews/sunnycomb/mood/MoodActivity$3;

    invoke-direct {v6, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$3;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    iget-boolean v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->showLoading:Z

    if-nez v5, :cond_8b

    .line 391
    invoke-direct {p0, v9}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setMoodWeek(Z)V

    .line 394
    :cond_8b
    return-void

    .line 350
    .end local v1    # "feelicon":I
    .end local v4    # "moodicon":I
    :cond_8c
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    aget-object v6, v5, v2

    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    invoke-virtual {v5}, Lcom/weathernews/sunnycomb/loader/data/MoodData;->getMoodTrans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v5, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16
.end method

.method private setMoodWeek(Z)V
    .registers 17
    .param p1, "isAnim"    # Z

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getParam()V

    .line 421
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_4
    const/4 v10, 0x7

    if-lt v3, v10, :cond_8

    .line 459
    return-void

    .line 422
    :cond_8
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03002f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 423
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f090137

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->week_fusen:Landroid/widget/FrameLayout;

    .line 424
    const v10, 0x7f090138

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feel_week_icon:Landroid/widget/ImageView;

    .line 425
    const v10, 0x7f090139

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feel_week_text:Landroid/widget/TextView;

    .line 426
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feel_week_text:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v11}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 428
    const v10, 0x7f09013b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_week_icon:Landroid/widget/ImageView;

    .line 430
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    invoke-virtual {v10}, Lcom/weathernews/sunnycomb/loader/data/MoodData;->getMoodInfo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weathernews/sunnycomb/mood/MoodInfo;

    .line 431
    .local v0, "WeekMood":Lcom/weathernews/sunnycomb/mood/MoodInfo;
    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeelface()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getMoodColor(I)I

    move-result v5

    .line 432
    .local v5, "moodcolor":I
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mood_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getMoodIcon()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 433
    .local v6, "moodicon":I
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "feeling_c_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/mood/MoodInfo;->getFeelface()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 435
    .local v2, "feelicon":I
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feel_week_text:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getWeekText(Lcom/weathernews/sunnycomb/mood/MoodInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_week_area:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    new-instance v10, Lcom/weathernews/sunnycomb/mood/MoodActivity$5;

    invoke-direct {v10, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$5;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->week_fusen:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 446
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_week_icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 447
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->feel_week_icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 448
    if-eqz p1, :cond_e4

    .line 449
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    iget v11, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->week_slide_dist:I

    neg-int v11, v11

    add-int/lit8 v12, v3, -0x1

    mul-int/lit16 v12, v12, 0xc8

    const/16 v13, 0x1f4

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->slideIn(IIILcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 451
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_df
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    array-length v10, v10

    if-lt v4, v10, :cond_e8

    .line 421
    .end local v4    # "j":I
    :cond_e4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 452
    .restart local v4    # "j":I
    :cond_e8
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 453
    .local v8, "random":Ljava/util/Random;
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 454
    .local v7, "ran":I
    mul-int/lit16 v1, v7, 0xc8

    .line 455
    .local v1, "fadein_offset":I
    iget-object v10, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->worldAdj:[Landroid/widget/TextView;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    const/16 v12, 0x320

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeInOut(IIILcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto :goto_df
.end method

.method private setSample(Z)V
    .registers 9
    .param p1, "isAnim"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 760
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getParam()V

    .line 761
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f09011a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_bg:Landroid/widget/FrameLayout;

    .line 762
    new-instance v2, Lcom/weathernews/sunnycomb/mood/MoodActivity$sampleCircle;

    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/weathernews/sunnycomb/mood/MoodActivity$sampleCircle;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Landroid/content/Context;)V

    .line 763
    .local v2, "sample":Lcom/weathernews/sunnycomb/mood/MoodActivity$sampleCircle;
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_bg:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 764
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f090116

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    .line 765
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f090117

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitday:Landroid/widget/TextView;

    .line 766
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f090119

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->example:Landroid/widget/TextView;

    .line 767
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample_explain:Landroid/widget/TextView;

    .line 768
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f09011e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_feeling:Landroid/widget/TextView;

    .line 769
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f09011d

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_day:Landroid/widget/TextView;

    .line 770
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    const v4, 0x7f09011f

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_mood:Landroid/widget/TextView;

    .line 772
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 773
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitday:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 774
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample_explain:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 775
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_feeling:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 776
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_day:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getMedium()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 777
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->sample_mood:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getMedium()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 778
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->example:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->fontStyle:Lcom/weathernews/sunnycomb/common/SCFontStyle;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/common/SCFontStyle;->getLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 780
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitday:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    if-nez v3, :cond_107

    .line 783
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :goto_e0
    if-eqz p1, :cond_119

    .line 789
    invoke-static {}, Lcom/weathernews/sunnycomb/common/CommonParams;->getInstance()Lcom/weathernews/sunnycomb/common/CommonParams;

    move-result-object v0

    .line 790
    .local v0, "commonParams":Lcom/weathernews/sunnycomb/common/CommonParams;
    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/common/CommonParams;->getDispWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->times_hex:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 792
    .local v1, "dist":I
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->times_hex:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    new-instance v5, Lcom/weathernews/sunnycomb/mood/MoodActivity$20;

    invoke-direct {v5, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$20;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v4, v1, v5}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->rotateHex(ILcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 805
    .end local v0    # "commonParams":Lcom/weathernews/sunnycomb/common/CommonParams;
    .end local v1    # "dist":I
    :goto_106
    return-void

    .line 785
    :cond_107
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    invoke-virtual {v4}, Lcom/weathernews/sunnycomb/loader/data/MoodData;->getSubmitcount()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e0

    .line 802
    :cond_119
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitday:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->submitcount:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_106
.end method

.method private setShine(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 398
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 399
    .local v2, "random":Ljava/util/Random;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 400
    .local v1, "ran":I
    mul-int/lit8 v0, v1, 0x64

    .line 402
    .local v0, "offset":I
    iget-object v3, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    new-instance v6, Lcom/weathernews/sunnycomb/mood/MoodActivity$4;

    invoke-direct {v6, p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity$4;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;Landroid/view/View;)V

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/weathernews/sunnycomb/mood/MoodEffect;->fadeInOut(IIILcom/weathernews/libwnianim/ModAnimListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    return-void
.end method

.method private showAlert()V
    .registers 4

    .prologue
    .line 901
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 902
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 903
    const v1, 0x7f07015b

    new-instance v2, Lcom/weathernews/sunnycomb/mood/MoodActivity$22;

    invoke-direct {v2, p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity$22;-><init>(Lcom/weathernews/sunnycomb/mood/MoodActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 911
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 912
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 913
    return-void
.end method


# virtual methods
.method protected finishActivity()V
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->isFromPush:Z

    if-nez v0, :cond_b

    .line 878
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->finish()V

    .line 879
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setActivityAnimAlphaFinish()V

    .line 883
    :goto_a
    return-void

    .line 881
    :cond_b
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->backToHex()V

    goto :goto_a
.end method

.method protected getLeftLogoResID()I
    .registers 2

    .prologue
    .line 928
    sget-object v0, Lcom/weathernews/sunnycomb/sidemenu/MenuType;->MOOD:Lcom/weathernews/sunnycomb/sidemenu/MenuType;

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/sidemenu/MenuType;->getIconResId()I

    move-result v0

    return v0
.end method

.method protected getNaviBarAlpha()Lcom/weathernews/sunnycomb/SunnycombActivityBase$NaviBarAlpha;
    .registers 2

    .prologue
    .line 918
    sget-object v0, Lcom/weathernews/sunnycomb/SunnycombActivityBase$NaviBarAlpha;->ALPHA_96:Lcom/weathernews/sunnycomb/SunnycombActivityBase$NaviBarAlpha;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 120
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-super {p0, p1}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setIsSideMenu(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/weathernews/sunnycomb/Sunnycomb;

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->app:Lcom/weathernews/sunnycomb/Sunnycomb;

    .line 126
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->app:Lcom/weathernews/sunnycomb/Sunnycomb;

    iget-object v0, v0, Lcom/weathernews/sunnycomb/Sunnycomb;->mLocationClient:Lcom/baidu/location/LocationClient;

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    .line 127
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->app:Lcom/weathernews/sunnycomb/Sunnycomb;

    invoke-virtual {v1, v2}, Lcom/weathernews/sunnycomb/Sunnycomb;->setLocationOption(Z)Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 128
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 130
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->res:Landroid/content/res/Resources;

    .line 131
    new-instance v0, Lcom/weathernews/libwniutil/UtilCalendar;

    invoke-direct {v0, p0}, Lcom/weathernews/libwniutil/UtilCalendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->utilCalendar:Lcom/weathernews/libwniutil/UtilCalendar;

    .line 132
    invoke-static {}, Lcom/weathernews/sunnycomb/common/ProfileManager;->getInstance()Lcom/weathernews/sunnycomb/common/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->profMngr:Lcom/weathernews/sunnycomb/common/ProfileManager;

    .line 133
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->profMngr:Lcom/weathernews/sunnycomb/common/ProfileManager;

    invoke-virtual {v0, p0}, Lcom/weathernews/sunnycomb/common/ProfileManager;->init(Landroid/app/Activity;)V

    .line 135
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setContentView(I)V

    .line 136
    invoke-static {}, Lcom/weathernews/sunnycomb/loader/MoodDataLoader;->getInstance()Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodDataLoader:Lcom/weathernews/sunnycomb/loader/MoodDataLoader;

    .line 138
    invoke-virtual {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getParams(Landroid/content/Intent;)V

    .line 140
    sget-object v0, Lcom/weathernews/sunnycomb/sidemenu/MenuType;->MOOD:Lcom/weathernews/sunnycomb/sidemenu/MenuType;

    invoke-virtual {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setLeftLogo(Lcom/weathernews/sunnycomb/sidemenu/MenuType;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 218
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getParams(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;->onResume()V

    .line 158
    new-instance v0, Lcom/weathernews/sunnycomb/mood/MoodEffect;

    invoke-direct {v0}, Lcom/weathernews/sunnycomb/mood/MoodEffect;-><init>()V

    iput-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodEffect:Lcom/weathernews/sunnycomb/mood/MoodEffect;

    .line 159
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->find()V

    .line 160
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->profMngr:Lcom/weathernews/sunnycomb/common/ProfileManager;

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/common/ProfileManager;->elapsedTimeStatus()I

    move-result v0

    iget-object v1, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->profMngr:Lcom/weathernews/sunnycomb/common/ProfileManager;

    iget v1, v1, Lcom/weathernews/sunnycomb/common/ProfileManager;->RELOAD:I

    if-ne v0, v1, :cond_22

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->showLoading:Z

    .line 162
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->removeWeek()V

    .line 163
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->StartLoad()V

    .line 175
    :cond_22
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/weathernews/sunnycomb/SunnycombActivityBase;->onWindowFocusChanged(Z)V

    .line 181
    iget-boolean v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->once:Z

    if-eqz v0, :cond_1c

    .line 182
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->initNaviBar()V

    .line 183
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->getParam()V

    .line 184
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    if-nez v0, :cond_1a

    .line 185
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setAnim()V

    .line 186
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setInvisible()V

    .line 188
    :cond_1a
    iput-boolean v2, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->once:Z

    .line 191
    :cond_1c
    if-eqz p1, :cond_34

    .line 192
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->akey:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 193
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setSample(Z)V

    .line 209
    :goto_31
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->initNaviBar()V

    .line 211
    :cond_34
    return-void

    .line 196
    :cond_35
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    if-nez v0, :cond_3d

    .line 197
    invoke-direct {p0}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->StartLoad()V

    goto :goto_31

    .line 199
    :cond_3d
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->moodData:Lcom/weathernews/sunnycomb/loader/data/MoodData;

    invoke-virtual {v0}, Lcom/weathernews/sunnycomb/loader/data/MoodData;->getSubmitcount()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_54

    .line 200
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    invoke-direct {p0, v2}, Lcom/weathernews/sunnycomb/mood/MoodActivity;->setSample(Z)V

    goto :goto_31

    .line 204
    :cond_54
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_forecast:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/weathernews/sunnycomb/mood/MoodActivity;->mood_sample:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_31
.end method

.method protected onWindowFocusChangedOnce()V
    .registers 1

    .prologue
    .line 924
    return-void
.end method
